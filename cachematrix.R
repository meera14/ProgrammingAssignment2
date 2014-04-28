
# makeCasheMatrix : special "matrix" object that can cache its inverse.
# cacheSolve : calculate inverse of the special "matrix" returned by makeCacheMatrix

makeCacheMatrix <- function(x) { 
  if (!is.matrix(x)) {
    warning("argument is not a matrix: returning NA")
    return(NA_real_)
  }
 
}

cacheSolve <- function(x, ...) {
  m <- makeCacheMatrix(x)
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  else
  data <- makeCacheMatrix(x)
  m <- solve(x, ...)
  return(m) 
}
