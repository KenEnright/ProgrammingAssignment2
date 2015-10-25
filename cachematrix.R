## Coursera JH Programming Assignment 2: Lexical Scoping
## Assignment: Caching the Inverse of a Matrix

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
              m <- NULL
              set <- function(y) {
                x <<- y
                m <<- NULL
              }
              get <- function() x
              setinverse <- function(inverse) m <<- inverse
              getinverse <- function() m
              list(set = set, get = get,
                   setinverse = setinverse,
                   getinverse = getinverse)
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the  
## cachesolve should retrieve the inverse from the cache via setinverse function.

cacheSolve <- function(x = matrix(), ...) { ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        
        if(!is.null(m)){
          message("getting cached data")
          return(m)
        }
        
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$setinverse(m)
        return(m)
}

## Guidance for executing the cachematrix.R with Lexical Scoping.

## within the Console: 

#> source("cachematrix.R")
#> Matrix.data = makeCacheMatrix(matrix(1:4, nrow = 2, ncol = 2)) #first store a matrix data
#> Matrix.data$get()         # Returns the stored matrix data
#[,1] [,2]
#[1,]    1    3
#[2,]    2    4
#> cacheSolve(Matrix.data) # Run the cacheSolve function retrieve the inverse of the matrix data from the cache
#[,1] [,2]
#[1,]   -2  1.5
#[2,]    1 -0.5
#> cacheSolve(Matrix.data) # re-Run of the cacheSolve function. Retreives the cached matrix inverse using previously computed if 
#getting cached data
#[,1] [,2]
#[1,]   -2  1.5
#[2,]    1 -0.5
