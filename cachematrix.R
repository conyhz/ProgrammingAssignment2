## Put comments here that give an overall description of what your
## functions do

## this function create a matrix to cache the original matrix

makeCacheMatrix <- function(x = matrix()) {
  im <- NULL
##set initiated value to im
  set <- function(y) {
##set a function to set vector x to a new vector y 
    x <<- y  	
    im <<- NULL
## reset im value to NULL if set is called
  }
  get <- function() x
##return x
  setmatrix <- function(solve) im <<- solve
##assign new value to im
  getmatrix <- function() im
##retuen im
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
##create a list
}


## Return an inversed matrix of 'x'

cacheSolve <- function(x,...) {
  im <- x$getmatrix ()
  ##get value fo im
  if(!is.null(im)) {
    message("getting cached data")
    return(im)
    ##if im is not NULL,return im and a message
  }
  data <- x$get()
  im <- solve(data,...)
  x$setmatrix(im)
  im
  ##set new value to im then return 
}
