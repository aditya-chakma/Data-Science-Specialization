# Reading Data
# output<-read.csv('outcome-of-care-measures.csv', colClasses = 'character')
outcome<-read.csv('outcome-of-care-measures.csv')

# Visualize Data
head(outcome)
names(outcome)
summary(outcome)
dim(outcome)

outcome[,11]<- as.numeric(outcome[,11])
# These two are same
hist(outcome$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
hist(outcome[,11])

cn = colnames(outcome)

colnames(outcome)<- c(cn[1:10], 'hospital death heart attack','comparison death heart attack',
                     'lower death heart attack','upper death heart attack','number death heart attack'
                     ,'footnote death heart attack', 'hospital death heart failure',
                     'comparison death hea\rt failure','lower death heart failure','upper death heart failure'
                     ,'number death heart failure','footnote death heart failure','hospital death pneumonia'
                     ,'comparison death pneumonia','lower death pneumonia','upper death pneumonia'
                     ,'number death pneumonia','footnote death pneumonia', 'hospital readmission heart attack'
                     ,'comparison readmission heart attack','lower readmission heart attack'
                     ,'upper readmission heart attack','number readmission heart attack'
                     ,'footnote readmission heart attack', 'hospital readmission heart failure'
                     ,'comparison readmission heart failure','lower readmission heart failure'
                     ,'upper death heart failure','number readmission heart failure'
                     ,'footnote readmission heart failure','hospital readmission pneumonia'
                     ,'comparison readmission pneumonia','lower readmission pneumonia'
                     ,'upper readmission pneumonia','number readmission pneumonia','footnote readmission pneumonia')
colnames(outcome)

best<- function(state, out)
{
  # Sanity Check
  outstr = paste('hospital death',out)
  if(! outstr %in% colnames(outcome))
  {
    stop('invalid outcome')
  }
  if(! state %in% outcome$State )
  {
    stop('invalid state')
  }
  #Data manipulation
  # Sort Data by hospital names
  newdata = outcome[order(outcome$Hospital.Name),]
  # Take logical vector for states
  bicheck = newdata$State == state
  # Take valid mortality rates
  # Take only the data which State is same as state
  mrate = newdata[bicheck,]
  # Convert the column to numeric
  mrate[,outstr] = as.numeric(mrate[,outstr])
  # Take the logical vector for minimum mortality rate
  bicheck = mrate[outstr] == min(mrate[outstr], na.rm = T)
  
  # Replace NA with F
  bicheck[is.na(bicheck)]=F
  # Return
  return(((mrate$Hospital.Name)[bicheck])[1])
}

best("TX", "heart attack")
best("TX", "heart failure")
best("MD", "heart attack")
best("MD", "pneumonia")
best("BB", "heart attack")
best("NY", "hert attack")

rankhospital<- function(state, out, rank)
{
  # Sanity Check
  outstr = paste('hospital death',out)
  if(! outstr %in% colnames(outcome))
  {
    stop('invalid outcome')
  }
  if(! state %in% outcome$State )
  {
    stop('invalid state')
  }
  #Data manipulation
  # Sort Data by hospital names
  #newdata = outcome[order(outcome$Hospital.Name),]
  newdata = outcome
  # Take logical vector for states
  bicheck = newdata$State == state
  # Take valid mortality rates
  # Take only the data which State is same as state
  mrate = newdata[bicheck,]
  # Convert the column to numeric
  mrate[,outstr] = as.numeric(mrate[,outstr])
  
  # Sort by the mortality value
  mrate = mrate[order(mrate[outstr],mrate$Hospital.Name,na.last = NA),]
  
  if( rank == 'best')
    return((mrate$Hospital.Name)[1])
  if( rank == 'worst')
    return((mrate$Hospital.Name)[length(mrate$Hospital.Name)])
  else
    return((mrate$Hospital.Name)[rank])
  
}

rankhospital("TX", "heart failure", 4)
rankhospital("MD", "heart attack", "worst")
rankhospital("MN", "heart attack", 5000)

rankall<-function(out,rank='best')
{
  states = unique(outcome$State)
  states = states[order(states)]
  ranked = data.frame()
  
  for(state in states)
  {
    tdata = data.frame(hospital = rankhospital(state,out,rank), state = state)
    ranked = rbind(ranked,tdata)
  }
  return(ranked)
}
head(rankall("heart attack", 20), 10)
tail(rankall("pneumonia", "worst"), 3)
tail(rankall("heart failure"), 10)

best("SC", "heart attack")
best("NY", "pneumonia")
best("AK", "pneumonia")
rankhospital("NC", "heart attack", "worst")
rankhospital("WA", "heart attack", 7)
rankhospital("TX", "pneumonia", 10)
rankhospital("NY", "heart attack", 7)
r <- rankall("heart attack", 4)
as.character(subset(r, state == "HI")$hospital)
r <- rankall("pneumonia", "worst")
as.character(subset(r, state == "NJ")$hospital)
r <- rankall("heart failure", 10)
as.character(subset(r, state == "NV")$hospital)
