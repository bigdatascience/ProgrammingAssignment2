## Put comments here that give an overall description of what your
## functions do

## This function creates a Cached Matrix. 
## It is a first class function that returns a list set, get, setmatrix and getmatrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(matrix) m <<- matrix
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}
}


## The cacheSolve function solves and returns the inverse of a matrix.

cacheSolve <- function(x, ...) {
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- matrix(data, ...)
        x$setmatrix(m)
        m
}
