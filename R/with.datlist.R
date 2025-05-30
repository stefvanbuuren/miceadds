## File Name: with.datlist.R
## File Version: 0.101

# with function for datlist
# This function is copied and modified from with.imputationList (mitools package)
with.datlist <- function( data, expr, fun, ... )
{
    pf<-parent.frame()
    if (!is.null(match.call()$expr)){
        expr<-substitute(expr)
        results<-lapply(data, function(dataset) eval(expr, dataset, enclos=pf))
    } else {
        results<-lapply(data, fun,...)
    }
    if (all(sapply(results, inherits,  what='imputationResult'))){
        class(results)<-'imputationResultList'
        results$call<-sys.call(-1)
    } else {
        attr(results,'call')<-sys.call(-1)
    }
    return(results)
}
