## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#Contains functions for setting and getting the value
#of the matrix function itself as well as the inverse
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setInv <- function(i) inv <<- i
    getInv <- function() inv
}


## Write a short comment describing this function
#Calculates the inverse of the matrix, if possible,
#and caches the values
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getInv()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    
    data <- x$get()
    inv <- solve(x, ...)
    x$setInv(inv)
}
