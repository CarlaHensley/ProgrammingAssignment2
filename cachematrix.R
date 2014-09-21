## These functions are created to cache the inverse of a square matrix in 
##two parts

## This function intends to take a square matrix for an argument. Printing 
##the matrix that is given will yield a list of the variables 
## such as $get and $set and the 
##environments where they are found. 

makeCacheMatrix <- function(x = matrix()) {

	m <- NULL
	set <- function(y){
		 x<<-y
		 m<<-NULL
	}

	get <- function() x
	setsolve <-function(solve) m<<- solve
	getsolve <-function() m
	list(set = set, get = get, 
	     setsolve = setsolve,
	     getsolve = getsolve) 

}


## In this function we cache the inverse of the matrix by calling
##the cacheSolve function into the matrix we created. Note that if we go 
##go ahead and call the matrix we created and the getsolve function, R will  
##yield "NULL", because the function has not being cached yet. 
##If we wanted to cache the inverse of our matrix once again, the message
##"getting cached data" will be displayed before our answer.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getsolve()
	if(!is.null(m)){

		message("getting chached data")
		return (m)

	}
		data <- x$get()
		m <- solve(data,...)
		x$setsolve(m)
		m	
}


$git add .
$ git commit -m "final update/commit"
$ git push master origin


