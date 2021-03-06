## File Name: mice.impute.2lonly.function.R
## File Version: 0.11



#******************************************
# general imputation function at level 2
mice.impute.2lonly.function <- function( y, ry, x, type, imputationFunction, ... ){
    if ( sum(type==-2 ) !=1 ){
        stop( "No cluster variable!\n")
    }

    #--- extract arguments
    res <- mice_imputation_get_states(pos=parent.frame() )
    vname <- res$vname
    imputationFunction_vname <- mice_imputation_extract_list_arguments(
                micearg=imputationFunction,
                vname=vname, miceargdefault="norm" )
    # extract cluster index
    clusterx <- x[,type==-2 ]
    # calculate aggregated values
    x <- cbind(1, as.matrix(x[,type %in% c(1,2)]))
    a2 <- rowsum( cbind(x,y), clusterx, na.rm=FALSE)
    #~~~~~
    clusterx0 <- as.numeric( paste0( rownames(a2)))
    a2 <- a2 / rowsum( 1+0*y, clusterx, na.rm=FALSE )[,1]
    a1 <- cbind( clusterx0, a2 )
    #~~~~~
    N1 <- ncol(a1)
    cly2 <- unique( clusterx[ ry ] )  # clusters without missings on y
    ry2 <- a1[,1] %in% cly2
    x1 <- as.matrix(a1[, - c(1,N1)])
    #*** collect arguments and apply general imputation method
    args <- list( y=as.matrix(a1[,N1]), ry=ry2, x=x1[,-1], ... )
    imp_function <- paste0("mice.impute.", imputationFunction_vname )
    ximp2 <- do.call( imp_function, args )
    #*** data postprocessing
    cly2 <- a1[ ! ry2, 1]
    i1 <- match( clusterx, cly2 )
    ximp <- ( ximp2[i1] )[ ! ry ]
    return(ximp)
}
