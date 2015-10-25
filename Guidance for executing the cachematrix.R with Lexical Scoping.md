## Guidance for executing the cachematrix.R with Lexical Scoping.

Within the Console: 

source("cachematrix.R")

###Example

Matrix.data = makeCacheMatrix(matrix(1:4, nrow = 2, ncol = 2)) #first store a matrix data

Matrix.data$get()         # Returns the stored matrix data

       [,1]   [,2]
[1,]   1      3

[2,]   2      4

cacheSolve(Matrix.data) # Run the cacheSolve function retrieve the inverse of the matrix data from the cache

        [,1]  [,2]
[1,]   -2     1.5

[2,]   1     -0.5

cacheSolve(Matrix.data) # re-Run of the cacheSolve function. Retreives the cached matrix inverse using previously computed if 
getting cached data

        [,1] [,2]
[1,]   -2     1.5

[2,]   1     -0.5
