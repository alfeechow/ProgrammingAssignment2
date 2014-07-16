## Put comments here that give an overall description of what your
## functions do

## Name : Alfee Chow

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(solved) m <<- solved
    getsolve <- function() m
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$getsolve()
    if(!is.null(m)) {
        message("getting cached matrix")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
}

## Example
## > mymatrix<-matrix(1:4,2,2)
## > new<-makeCacheMatrix(mymatrix)
## > cacheSolve(new)
## [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5
## > cacheSolve(new)
## getting cached matrix
## [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5