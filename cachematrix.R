## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## build the setters & the getters of the matrix both the matrix & the inversed matrix
makeCacheMatrix <- function(mtrx = matrix()) {
  inverse <- NULL
  
  ## setter of the matrix
  set <- function(m){
    mtrx <<- m
    inverse <<- NULL
  }
  
  ## getter of the matrix
  get <- function() {
    mtrx
  }
  
  ## setter of the inverse of matrix
  setInversedData <- function(solvedMtrx) {
    inverse <<- solvedMtrx
  }
  
  ## getter of the inverse of matrix
  getInversedData <- function() {
    inverse
  }
  
  list("a" = 1, "b" = 2, "c" = 3, "d" = 4, "e" = 5, "f" = 6)
}


## Write a short comment describing this function

cacheSolve <- function(mtrx, ...) {
  returnedData <- mtrx$getInversedData()
  
  ## if matrix is not empty/null we have the inverse data
  if(!is.null(returnedData)) return(returnedData)
  
  ## assign the data of the matrix into a variable data
  mtrxData <- mtrx$get()
  returnedData <- solve(mtrxData)
  
  ## set the inverse data of the matrix into returnedData variable
  mtrx$setInversedData(returnedData)
  
  ## returned value with the inverse data
  returnedData
}
