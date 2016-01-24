<<<<<<< HEAD
## The function makeCacheMatrix creates a matrix and stores it in cache.
## The second function cacheSolve retrieves the matrix from cache, 
## and inverses the matrix with the Solve function.

makeCacheMatrix <- function(x = matrix()) {
            m <- NULL
            set <- function(y) {
                    x <<- y
                    m <<- NULL
            }
            get <- function() x
            setmatrix <- function(Solvematrix) m <<- Solvematrix
            getmatrix <- function() m
            list(set = set, get = get,
                 setmatrix = setmatrix,
                 getmatrix = getmatrix)
}




## cacheSolve is a function that test or inverses the matrix.
cacheSolve <- function(x,...) {
            m <- x$getmatrix()
            if(!is.null(m)) {
                    message("cached matrix is inverted data")
                    return(m)
            } 
## "m" autoprints a matrix that is the inverse of 'x'
            data <- x$getmatrix()
            m <- solve(data,...)
            x$setmatrix(m)
            m

}


=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
