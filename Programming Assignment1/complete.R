complete <- function(direcotory, id = 1:332){
  file_list = list.files(path="specdata",full.names=TRUE)
  merge_data = {}
  column = vector()
  index = 1
  for(i in id){
    new_data = read.csv(file = file_list[i],header=TRUE,sep=",")
    merge_data = rbind(merge_data,new_data)
  }
  x = na.omit(merge_data)
  for(i in id){
    add_sum = length(which(x["ID"]==i))
    new_column = c(index, id = i, nobs = add_sum)
    column = rbind(column,new_column)
    index = index + 1
  }
  return(column)
}




