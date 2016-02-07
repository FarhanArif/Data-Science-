## There are two main functions that use the exact same logic as the mean examples in the course ##
## The idea is too write functions that can cache a certain result so that it is recomputed ##



makeCacheMatrix <- function(x = matrix()) 
{
  ## This function will store a matrix object and create a cache for it too ##
  inver <- NULL
  set <- function(y) 
    {
      x <<- y
      inver <<- NULL
    }
  get <- function() x
  
  ## The cache will be stored from here ##
  setInverse <- function(inv) inver <<- inv
  
  ## The cache will be extracted from here ##
  getInverse <- function() inver
  
  list (set = set, get = get,setInverse = setInverse, getInverse = getInverse)
}




cacheSolve <- function(x, ...) {
  ## This function will decide if it needs to compute or return the inverse of 'x' from cache ##
  inv <- x$getInverse()
  
  ## Checking if value is cached ##
  if (!is.null(inv)) 
  {
    message("getting cached data")
    return(inv)
  }
  
  ## If not calculate the inverse ##
  mat <- x$get()
  inv <- solve(mat, ...)
  
  ## Caching new value ##
  x$setInverse(inv)
  inv
}



## The end ##
