##
## The function "cacheSolve" return a matrix that is the inverse of 'x'
##
cacheSolve <- function(x, ...) {
        ## print the function environment 
        print(environment())
        ## print the parent environment 
        evn <- environment()
        print(parent.env(evn))
        ## First checks to see if the inverted Matrix has already been calculated
        mat_inv <- x$getsolve()
        if(!is.null(mat_inv)) {
                message("getting cached data")
                return(mat_inv)
        }
        ## if the inverted Matrix hasn't already been calculated, read the Matrix data
        data <- x$get()
        ## Calculate the inverted Matrix
        mat_inv <- solve(data, ...)
        ## Save the inverted Matrix in the parent enviroment
        x$setsolve(mat_inv)
        ## Show the inverted Matrix 
        mat_inv
}