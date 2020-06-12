corr<-function(directory, threshold = 0)
{
  source('complete.R')
  id = 1:332
  corrs = vector()
  
  sulfatev = vector()
  nitratev = vector()
  for(idx in id)
  {
    if(complete(directory,idx)$nobs <= threshold) next
    if(idx < 10)
      data = read.csv(paste(directory,'/00',idx,'.csv',sep=''))
    else if(idx < 100)
      data = read.csv(paste(directory,'/0',idx,'.csv',sep=''))
    else 
      data = read.csv(paste(directory,'/',idx,'.csv',sep=''))
    sulfatev = data$sulfate
    nitratev = data$nitrate
    corrs = c(corrs,cor(sulfatev,nitratev,use='pairwise.complete.obs'))
  }
  corrs
  
}