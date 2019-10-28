corr <- function(direcotory, threshold = 0){
  files_complete<-complete(as.character(directory))
  files_complete <- data.frame(files_complete)
  files_id = files_complete$id
  files_id = files_id[files_complete$nobs > threshold]
  
  file_list = list.files(path="specdata",full.names=TRUE)
  merge_data = {}
  result=vector()
  for(i in files_id){
    new_data = read.csv(file = file_list[i],header=TRUE,sep=",")
    x = na.omit(new_data)
    x <- data.frame(x)
    vec_cor = cor(x$nitrate,x$sulfate)
    result<-c(result,vec_cor)
  }
  return(result)
}


