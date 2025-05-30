## File Name: mice.1chain.R
## File Version: 0.673

#*** apply mice algorithm in a single chain
mice.1chain <- function(data, burnin=10, iter=20, Nimp=10,
            method = NULL, where = NULL, visitSequence = NULL,
            blots = NULL, post = NULL,
            defaultMethod=c("pmm", "logreg", "polyreg", "polr"),
            printFlag = TRUE, seed = NA, data.init=NULL, ...)
{
    CALL <- match.call()

    #-- check input
    res <- mice_1chain_check_input( burnin=burnin, iter=iter, Nimp=Nimp )
    burnin <- res$burnin
    iter <- res$iter
    Nimp <- res$Nimp

    #-- determine burnin phase
    iterstep0 <- round( seq( burnin, iter, length=Nimp+1 ) )
    iterstep <- diff( iterstep0  )
    implist <- list(  1:(Nimp+1) )
    datlist <- list( 1:Nimp )

    # indicator for factors
    VV <- ncol(data)
    ind.factor <- sapply( 1:VV, FUN=function(vv){
                        is.factor( data[,vv]) } )
    ind.num <- setdiff( 1:VV, which( ind.factor ) )
    meansObs <- colMeans( data[,ind.num], na.rm=TRUE )
    NObs <- colSums( 1 - is.na(data[,ind.num]))
    VarObs <- (colSums( data[,ind.num]^2, na.rm=TRUE ) - NObs * meansObs^2)/NObs
    NMiss <- colSums( is.na(data[,ind.num]))

    #******************************
    cat("************ BURNIN PHASE |", "Iterations 1 -", burnin,
            "******************\n")
    utils::flush.console()
    implist[[1]] <- imp0 <- mice::mice( data, maxit=burnin, m=1,
                    data.init=data.init, ... )
    dat0 <- mice::complete( imp0, 1 )
    chainMean <- t( imp0$chainMean[,,1] )
    chainVar <- t( imp0$chainVar[,,1] )
    rownames(chainVar)[ nrow(chainVar) ] <-
    rownames(chainMean)[ nrow(chainMean) ] <- "end_burnin"
    # imputation phase

    cat("\n\n************ IMPUTATION PHASE |", "Iterations", burnin+1, "-",
                iter, "******************\n") ;
    utils::flush.console()
    for ( mm in 1:Nimp){
        cat("\n --- Imputation", mm, "| Iterations",
        iterstep0[mm] + 1, "-", iterstep0[mm+1], "\n" )
        utils::flush.console()
        maxit_temp <- (iter-burnin)/Nimp
        implist[[mm+1]] <- imp1 <- mice::mice( data, maxit=maxit_temp, m=1,
                    method=method, where=where, visitSequence=visitSequence,
                    blots=blots, post=post, defaultMethod=defaultMethod,
                    printFlag=printFlag, seed=seed,
                    data.init=mice::complete(implist[[mm]], action=1), ... )
        datlist[[mm]] <- dat0 <- mice::complete( imp1, 1 )
        chainMean <- rbind( chainMean, t( imp1$chainMean[,,1] ) )
        chainVar <- rbind( chainVar, t( imp1$chainVar[,,1] ) )
        rownames(chainVar)[ nrow(chainVar) ] <- paste0( "imp_", mm )
        rownames(chainMean)[ nrow(chainMean) ] <- paste0( "imp_", mm )
    }

    #------ post-processing
    # conversion into a mids object
    ids <- seq( 1, nrow(data) )
    datalong <- data.frame( ".imp"=0, "id"=ids, data )
    for ( mm in 1:Nimp ){
        datalong <- rbind( datalong,
                        data.frame( ".imp"=mm, "id"=ids, datlist[[mm]] ) )
    }
    # midsobj <- datalist2mids(dat.list=datlist, progress=FALSE)
    # as.mids in mice
    midsobj <- mice::as.mids(datalong, .imp=1, .id=2)

    # adjust M and Var for chains
    vars <- colnames(chainMean)
    cM <- nrow(chainMean)
    eps <- 1E-20
    meansObs[ is.na(meansObs) ] <- 0
    LV <- length(vars)
    chainMPar <- ( chainMean * matrix( NMiss[vars], nrow=cM, ncol=LV, byrow=TRUE)+
                matrix( NObs[vars]*meansObs[vars], nrow=cM, ncol=LV, byrow=TRUE))/
                    ( eps+  matrix( NObs[vars] + NMiss[vars], nrow=cM, ncol=LV,
                                byrow=TRUE ) )
    vars <- colnames(chainVar)
    VarObs[ is.na(VarObs) ] <- 0
    chainVarPar <- ( chainVar * matrix( (NMiss[vars]), nrow=cM,
                            ncol=length(vars), byrow=TRUE ) +
                        matrix( ( NObs[vars])* VarObs[vars], nrow=cM,
                            ncol=length(vars), byrow=TRUE ) ) /
                        ( eps+ matrix( NObs[vars] + NMiss[vars], nrow=cM,
                                ncol=length(vars), byrow=TRUE ) )
    midsobj <- mice::as.mids(datalong, .imp=1)
    imm <- implist[[mm+1]]
    midsobj$predictorMatrix <- imm$predictorMatrix
    midsobj$method <- imm$method
    midsobj$call <- CALL

    res <- list( midsobj=midsobj, datlist=datlist, datalong=datalong,
                    implist=implist, chainMPar=chainMPar,
                    chainVarPar=chainVarPar, chainMean=chainMean, chainVar=chainVar,
                    burnin=burnin, iter=iter, Nimp=Nimp,
                    time=Sys.time() )
    res$nobs <- nrow(data)
    res$nvars <- ncol(data)
    class(res) <- "mids.1chain"
    return(res)
}

#**** S3 method summary
summary.mids.1chain <- function( object, ... )
{
    cat("Multiply imputed dataset using one chain\n\n")
    cat( paste0( "Number of iterations=", object$iter), "\n")
    cat( paste0( "Number of burnin-iterations=", object$burnin), "\n")
    cat( paste0( "Number of imputations=", object$Nimp), "\n")
    cat( paste0( object$nobs, " cases and ", object$nvars, " variables \n\n" ) )
    cat("---------\n")
    print( summary( object$midsobj ) )
}

#--- print method
print.mids.1chain <- function( x, ...)
{
    summary.mids.1chain( object=x, ...)
}

