##
## The function makeCacheMatrix creates a special "Matrix" object that can cache its inverse, it is really a list containing a function to
## 1 - set the value of the Matrix
## 2 - get the value of the Matrix
## 3 - set the value of the inverse Matrix
## 4 - get the value of the inverse Matrix
## This function creates a special "matrix" 
## 
makeCacheMatrix <- function(x = matrix()) {
        
        mat_inv <- NULL
        ## print the function environment 
        print(environment())
        ## print the parent environment 
        evn <- environment()
        print(parent.env(evn))
        ## set function definition
        set <- function(y) {
                x <<- y
                mat_inv <<- NULL
        }
        ## get function definition
        get <- function() x
        ## setsolve function definition
        setsolve <- function(solve) mat_inv <<- solve
        ## getsolve function definition
        getsolve <- function() mat_inv
        
        getevn<- function() environment()
        ## list definition
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve,
             getevn = getevn)
}
