## The goal of the following two functions is to cache the inverse of 
## a invertiable matrix. 

## This is a "make" funtion, a little kind of "family" function. Actually,
## I mean this function defins four individual functions associated with its 
## argument x, e.g., set(), get(), setInv() and getInv().  

makeCacheMatrix <- function(x = matrix()) {
        Inv <- NULL
        set <- function(y) {
                x <<- y
                Inv <<- NULL
        }
        get <- function() x
        setInv <- function(Inverse) Inv <<- Inverse
        getInv <- function() Inv
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}

## This function is a matrix inverse computation function. It's argument
## from the "make" function. However, it will firstely test whether the inverse
## of a matrix made by "make" function exists. If exists, it will just return
## the inverse. If not, it will compute the inverse and call the member function
## setInv() of the above "make" function to cache the inverse.

cacheSolve <- function(x, ...) {
       
}


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        Inv <- x$getInv()
        if(!is.null(Inv)) {
                message("getting cached data")
                return(Inv)
        }
        data <- x$get()
        Inv <- solve(data, ...)
        x$setInv(Inv)
        Inv
}


