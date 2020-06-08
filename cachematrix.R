## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    
    set <- function(y) {
        x <<- y            ##sets the matrix
        inv <<- NULL       ##assigns its  inverse as null as it has not been calculated yet
    }
    
    get <- function() {
        x   ##gets the matrix
    }
    
    setInverse <- function(inverse) {
        inv <<- inverse  ##sets the inverse
    }
    
    getInverse <- function() {
        inv ## gets the inverse
    }
    
    list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}

## Used for assigning the matrix. Suppose we set a 2*2 matrix.Then we can get
##this matrix. And then check if its inverse has been created if not we create
#the cachesolve function to get the inverse.


cacheSolve <- function(x, ...) {
    inv <- x$getInverse()
    
    if(!is.null(inv)){
        message("getting the cached data for this")
        return(inv)
    }
    
    dummy <- x$get()
    inv <- solve(dummy, ...)
    x$setInverse(inv)
    inv
}
