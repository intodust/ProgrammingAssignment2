## This code has two functions sources, first one creates the matrix and returns
## list of functions,  
## second function takes list of functions as argument and check if inverse is 
##cached
## if yes then it uses the cache and returns the value, if not then it calculates
## the inverse and sets to cache and returns the value.


## makcecacheMatrix takes matrix as argument, and returns list of functions


makeCacheMatrix <- function(x = matrix()) {

      orginalmatrix<- x
      inversematrix<- NULL
      
      set <- function(y) {
            x <<- y
            inversematrix <<- NULL
      }
      
      get <- function() orginalmatrix

      
      setcache<- function(inverse) inversematrix<<- inverse
      
      getcache<- function() inversematrix
      
      list(set=set, get= get, setcache= setcache, getcache= getcache)
}


## cacheSolve take list of function as argument and
##returns the inverse of matrix x

cacheSolve <- function(x, ...) {
      
      inverse<- x$getcache()
      if(!is.null(inverse)){
            message("getting cached inverse matrix")
            return(inverse)
      }
      
      original<- x$get()
      inverse<- solve(original)
      x$setcache(inverse)
      inverse
}
