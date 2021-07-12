
validate_inputs = function(age, sex, class){
  
  if(!(between(as.numeric(age),0,100))) stop('Incorrect value for age')
  if(!(sex %in% c('male','female'))) stop('Incorrect value for sex')
  if(!(as.numeric(class) %in% c(1,2,3))) stop('Incorrect value for age')
  
}