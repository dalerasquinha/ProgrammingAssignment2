## Put comments here that give an overall description of what your
## functions do

## This function returns a list of 4 functions. 
## 1st function  is a function that assigns the original matrix to a variable orig_matrix and gives a null value to variable inverse_matrix
## 2nd function is a function that returns the value of variable orig_matrix
## 3rd function is a function that assigns the inverse matrix to a variable inverse_matrix
## 4th function is a function that returns the value of variable inverse matrix

makeCacheMatrix <- function(orig_matrix = matrix()) {
       inverse_matrix <- NULL
  set <- function(y) {
           orig_matrix <<- y
           inverse_matrix <<- NULL
          }
  get <- function() orig_matrix
  setinverse <- function(z)  inverse_matrix <<-z
  getinverse <- function() inverse_matrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Takes a list of functions as an argument. If inverse matrix is calculated, it returns inverse matrix without recalculating. 
##If inverse matrix is not calculated, it calculates the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
    inverse_matrix <- x$getinverse()
      if(!is.null(inverse_matrix)) {
        message("getting cached data")
        return(inverse_matrix)
      }
    data <- x$get()
    m <- solve(data)
    x$setinverse(m)
    m
}
