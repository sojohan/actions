data(iris)
#install.packages('caret')
#install.packages('e1071')
require(caret)
require(e1071)
# create test/train data sets
inTrain <- createDataPartition(y=iris$Species,p=0.7, list=FALSE)
training <- iris[inTrain,]
testing <- iris[-inTrain,]
# fit classification tree as a model
modFit <- train(Species ~ .,method="rpart",data=training)
# print the classification tree
print(modFit$finalModel)
#predict(modFit,newdata=testing)
