
# Fitting the model -------------------------------------------------------
#source('script/model_build.R')
source('model_build.R')

#* Returns the probability of surviving the Titanic
#* @get /predict_survival_prob
predict_surv_prob <- function(sex, age, class){

  pred_dat = data.table(Age = as.numeric(age),
                        Sex = as.factor(sex),
                        Pclass = as.factor(class))

  predict(fit, pred_dat, type = 'response')
}

