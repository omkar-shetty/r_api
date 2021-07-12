
# Libraries ---------------------------------------------------------------
library(data.table)

# Read and build a basic model --------------------------------------------

train_data <- setDT(read.csv(file = 'train.csv'))
train_data[,Pclass := as.factor(Pclass)]

fit <- glm(Survived ~ Sex + Age + Pclass, family = 'binomial',data = train_data)


# Test on a single prediction ---------------------------------------------

test_row = data.table(Sex = 'female', Age = 60, Pclass = '3')
#pred = predict(fit, test_row, type = 'response')
# 0.02804472