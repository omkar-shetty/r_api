
# R API Demo

Models built in R can be exposed to external resources via API endpoints. This repo includes scripts to :  
* build a simple classification model  (based on the Titanic dataset).
* expose the model prediction as an API endpoint via the Plumber package. Users will be able to input 3 features - the passenger's age, gender and the travelling class and the model returns a prediction for how likely was it that the passenger survived. 
* Expose the endpoints directly via the local server as well as a docker container.
* A Jupyter notebook to submit requests directly to the API and record the responses.

## Data & Model
Since modelling wasn't the primary objective of this exercise, a very basic logistic regression model was built and used. The titanic dataset from Kaggle is used for training the model and no feature engineering or data cleanup was done at any point.

## References
* [R can API and So Can You!](https://medium.com/tmobile-tech/r-can-api-c184951a24a3)
* [Using docker to deploy an R plumber API](https://medium.com/tmobile-tech/using-docker-to-deploy-an-r-plumber-api-863ccf91516d)


## Authors

- [@omkarshetty](https://www.github.com/omkar-shetty)

  