## we used 2 functions to calculate the inverse of a matrix
##if the matrix is cached before it will return the value right away
##it won't calculate it repetedly


makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set<- function(y){
    x<<-y
    m<<- NULL
  }
  get<-function()x
  setinverse<-function(inverse) m<<-inverse
  getinverse<-function()m
  list(set=set,get=get,
       setinverse= setinverse, getinv=getinverse)
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  x$setinverse(m)
  m
}

