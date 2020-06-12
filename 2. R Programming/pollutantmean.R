pollutantmean<- function(directory, pollutant, id=1:332)
{
  datas = vector()
  for(idx in id)
  {
    
    if(idx<10)
      data = read.csv(paste(directory,'/00',idx,'.csv', sep = ''))
    else if(idx<100)
      data = read.csv(paste(directory,'/0',idx,'.csv',sep = ''))
    else data = read.csv(paste(directory,'/',idx,'.csv',sep = ''))
    datas = c(datas, data[[pollutant]])
  }
  return(mean(datas,na.rm = T))
}