## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  l <- NULL 
  # setting the vector
  set <- function(y) {
    x <<- y
    l <<- NULL
  }
  
  # getting the vector
  get <- function()x
  
  # setting inverse of matrix
  setinverse <- function(inverse)l<<-
    
  # getting inverse of matrix
  getinverse <- function()l
  
  list(set = set, get=get,
       setinverse = setinverse,
       getinverse = getinverse
       )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  # need to check if the inverse has been calculated
  l <- x$getinverse()
  if (!is.null(l)) {
    message("getting cached result")
    return(l)
  }
  # else you need to calculate the inverse matrix results
  else {
    # getting the vector
    matrix<-x$get()
    # get the inverse
    l <- inverse(matrix, ...)
    # set the inverse
    x$setinverse(l)
    # return
    l
  }
        ## Return a matrix that is the inverse of 'x'
}

