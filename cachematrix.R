## These functions provide inverse of a matrix as output after first checking if the 
## cached inverse already exists. makeCacheMatrix creates the inverse and cacheSolve checks for whether
## it already exists and invokes makeCacheMatrix is required

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    a <- matrix(1,2,2)
    m <- NULL
    a <- solve(x)
    getinverse <- function() a
    ##return (a)
    
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should 
##  retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    
}
