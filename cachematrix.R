## The function makeCacheMatrix is used to store a squared matrix
## and the inverse of it.
## The second function cacheSolve test whether the inverse exists or, 
## computes the inverse of the matrix with the Solve function.

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




## cacheSolve function for testing on existance or compute the inverse,
## and stores it.
cacheSolve <- function(x,...) {
            m <- x$getmatrix()
            if(!is.null(m)) {
                    message("getting cached data")
                    return(m)
            } 
## "m" is computed as the inverse of matrix 'x'
            data <- x$getmatrix()
            m <- solve(data,...)
            x$setmatrix(m)
            m

}


