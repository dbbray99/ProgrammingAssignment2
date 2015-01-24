## makeCacheMatrix creates a special matrix to store it's inverse
makeCacheMatrix <- function(x) {
        m <<- NULL
        matrixInv <<- NULL
        m <<- x
        message("matrix stored")
}

## Test to see if the inverse has already been created and if not go and create it
cacheSolve <- function(m) {
        
        test <- get("matrixInv")
        data <- get("m")
        
        if(!is.null(test)) {
                message("getting cached data")
                return(test)
        }        
        ## Not created so go create the matrix inverse        
        setinverse(data)   
}

## Setinverse actually creates the matrix inverse
setinverse <- function(m){
        
        matrixInv <<- solve(m)
        message("inverse created")
        return(matrixInv)
}