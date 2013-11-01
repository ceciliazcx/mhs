##running time
ptm <- proc.time()

library(e1071)
library(class)
data(iris)
attach(iris)

##svm
x<-subset(iris,select=-Species)
y<-Species
svmmodel<-svm(x,y,probability=TRUE)
print("svm")
svmmodel
save(svmmodel,file='svmmodel.rda')

##naiveBayes
nbmodel<-naiveBayes(Species~.,iris)
print("naiveBayes")
nbmodel
save(nbmodel,file='nbmodel.rda')

print("runningtime:")
proc.time() - ptm

