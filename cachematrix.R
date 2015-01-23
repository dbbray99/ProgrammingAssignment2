## The function makeCacheMatrix creates as an x by y matrix with elements equal to z 
        
makeCacheMatrix <- function(z, x, y) {
        m <- NULL                               ## Clear the cache
        m <<- matrix(z, x, y)                   ## Create new matrix cache
}

setinverse <- function(x){
        matrixResult <<- solve(x)
}


cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
        m <- get("matrixResult")
        ddd <- solve(m)
        return(ddd)
}
