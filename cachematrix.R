
##sets a matrix and calculates it inverse 



## Used for assigning the matrix. Suppose we set a 2*2 matrix.Then we can get
##this matrix. And then check if its inverse has been created if not we create
#the cachesolve function to get the inverse.


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

## used for setting inverse.
##If we already have the inverse it will just display it with a messgae.
##If we dont have an inverse, It sets the inverse

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
