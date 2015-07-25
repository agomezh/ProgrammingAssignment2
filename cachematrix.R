## Create a matrix whose inverse can be cached and 
## provide the tools to obtain the cache and set it 


## Write a short comment describing this function
## Create the matrix object whose inverse can be cached
makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(y) {
		x <<- y
		inverse <<- NULL
	}
	get <- function() x
	setinverse <- function(inverseMatrix) <<- inverseMatrix
	getinverse <- function() inverse
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) 

}


## Write a short comment describing this function
## Compute the cached inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inverse <- x$getmean()
	if (!is.null(inverse)){
		message("getting cached inverse")
		return(inverse)
	}
	data <- x$get()
	inverse <-solve(x,...)
	x$setinverse(inverse)
	inverse
}
