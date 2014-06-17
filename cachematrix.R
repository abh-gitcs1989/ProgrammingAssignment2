## Put comments here that give an overall description of what your
## functions do
## Step 1 : Call makeCacheMatrix over the matrix to create a list of getters setters for that particular matrix
## Step 2 : Use the obtained list from Step 1 and pass to cacheSolve to get back the inverse . 


## Write a short comment describing this function

## The "makeCacheMatrix" returns a list containing various functions like getters setters ona  matrix . Internally a seperate cache variable is maintained that caches the inverse value of the supplied matrix



makeCacheMatrix <- function(x = matrix()) {

	i <- NULL
 	set <- function(y) {
		x <<- y 
		i <<- NULL				
	}
	get <- function() x
	setinv <- function(inverse) i <- inverse
	getinv <- function() i
	list(set = set , get = get, setinv = setinv , getinv = getinv)
}


## Write a short comment describing this function

## The "cacheSolve" returns the inverse of the matrix which was initially supplied to the above function . 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	inv <- x$getinv()
	if(!is.null(inv)){
		message("Getting cached data")
		return(inv)
	}
	data <- x$get()
	inv <- solve(data)
	x$setinv(inv)
	inv	  	
}
