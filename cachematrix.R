## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        
        ## Set the matrix
        set<-function(y){
                x<<-y
                m<<-NULL
        }
        ##get the matrix and return
        get<-function() x
        ## Set the solve of the matrix
        setmatrix<-function(solve) m<<- solve
        ## Get the solve of the matrix and return
        getmatrix<-function() m
        ## Return a list of the methods
        list(set=set, get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
        m<-x$getmatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        matrix<-x$get()
        m<-solve(matrix, ...)
        x$setmatrix(m)
        m
}