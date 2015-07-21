## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	#declare the inverse matrix with NULL by default
    matriz <- NULL
    
    #set a value to the matrix
    set <- function(y)
    {
        x <<-y
        matriz <<- NULL
    }
    
    #get  the current value of a matrix
    get <- function()
    { x }
    
    #function to calculate the inverse of a given matrix
    setInverse <- function(inverse)
    {
        matriz <<- inverse
    }
    #function to return the current value of matriz
	getInverse <- function()
    { matriz }
    
    list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	# assign the value contained in x to the variable matriz
    matriz <- x$getInverse()
    
    #check if matriz is NULL
    if(!is.null(matriz))
    {
        message("data obtained from cache")
        return(matriz)
    }
    data <- x$get()
    matriz <- solve(data,...)
    x$setInverse(matriz)
    matriz
}
