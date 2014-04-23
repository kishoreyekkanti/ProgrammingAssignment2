## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  
  setMatrix <- function(y){
    x <<- y
    inverseMatrix <- NULL
  }
  
  getMatrix <- function() x
  
  getInverse <- function() {
    if(is.null(inverseMatrix)){
      inverseMatrix <<- solve(x)
    }
    inverseMatrix
  }
  
  list(setMatrix = setMatrix, getMatrix = getMatrix, getInverse = getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inverseMatrix <- x$getInverse()
  inverseMatrix
  ## Return a matrix that is the inverse of 'x'
}
