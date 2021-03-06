## File Name: str_C.expand.grid.R
## File Version: 0.08

#************************************************
# combine strings using expand.grid
str_C.expand.grid <- function( xlist, indices=NULL )
{
    xeg <- expand.grid(xlist)
    if ( ! is.null(indices) ){
        xeg <- xeg[, indices ]
    }
    apply( xeg, 1, FUN=function(vv){ paste0( vv, collapse="") } )
}
#************************************************
