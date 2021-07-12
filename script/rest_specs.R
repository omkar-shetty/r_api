
# Fitting the model -------------------------------------------------------
source('model_build.R')
source('utils.R')

#Although sourcing the entire training file is not the best option for this scenario, this approach was taken as a trial.
#It would have  been preferable to save the model as an rds and read it just prior to scoring.

#* Returns the probability of surviving the Titanic
#* @get /predict_survival_prob
predict_surv_prob <- function(sex, age, class){

  validate_inputs(age = age, sex = sex, class = class)
  
  tryCatch({
    
    pred_dat = data.table(Age = as.numeric(age),
                        Sex = as.factor(sex),
                        Pclass = as.factor(class))

            return(predict(fit, pred_dat, type = 'response'))
      }, error = function(e){
              message('fatal error')
              message(e)
              stop()
    })
}

