minusfunction <- function(x){
      r1<- 100
      r2<- NULL
      minusone <- function(y){
            r1<<- y - 1
            print(r1)
                      message("its minus one")
                      r1               
      }
      minustwo<- function(y){
            r2<<- y-2
      r2 }
      getx<- function() x
      
      
      list(getx = getx, minusone = minusone, minustwo = minustwo)
}