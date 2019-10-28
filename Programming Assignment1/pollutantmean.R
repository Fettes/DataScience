pollutantmean <- function(direcotory, pollutant, id = 1:10){
  file_list = list.files(path=direcotory,full.names=TRUE)
  merge_data = {}
  for(i in id){
    new_data = read.csv(file = file_list[i],header=TRUE,sep=",")
    merge_data = rbind(merge_data,new_data)
  }
  x = merge_data[pollutant]
  y = x[!is.na(x)]
  result = mean(y)
  result
}






