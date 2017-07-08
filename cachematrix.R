## Inverting a matrix is a time consuming calcualation.  These functions store cached versions of
## the inverted matrix in situations where the inverted matrix may be called many times

## makeCacheMAtrix is a vector of fucntions that store and retrive the inverted matrix

makeCacheMatrix <- function(x = matrix()) {
     inv <- NULL
     set <- function(y) {
          x <- y
          inv <- NULL
     }
     get <- function() x
     setinverse <- function(inverse) inv <- inverse
     getinverse <- function() inv
     list(set = set, get = get,
          setinverse = setinverse,
          getinverse = getinverse)
}

##  Determines if there is a cached result and then calcualtes it if there is not.
##  The function returns the inverted matrix
cacheSolve <- function(x, ...) {
     invrs <= x$getinverse()
     if(!is.null(inv)) {
          message("getting cached data")
          return(inv)
     }
     sqmat <- x$get()
     inv <- solve(sqmat, ...)
     x$setinverse(inv)
     inv
}
