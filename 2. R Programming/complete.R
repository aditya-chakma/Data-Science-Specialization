complete<-function(directory,id=1:332)
{
  counts = vector()
  
  for(idx in id)
  {
    if(idx < 10)
      data = read.csv(paste(directory,'/00',idx,'.csv',sep=''))
    else if(idx < 100)
      data = read.csv(paste(directory,'/0',idx,'.csv',sep=''))
    else 
      data = read.csv(paste(directory,'/',idx,'.csv',sep=''))
    counts = c(counts,c(idx, sum(!is.na(data$sulfate) & !is.na(data$nitrate))))
  }
  #print(counts)
  counts = matrix(counts,nrow= length(id),ncol =2,byrow = T)
  counts = data.frame(counts)
  colnames(counts) <- c('id','nobs')
  counts
}