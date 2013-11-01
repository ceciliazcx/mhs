##running time
ptm <- proc.time()

library(e1071)
library(class)

data(iris)
attach(iris)

##svm
load('svmmodel.rda')
pre1<-predict(svmmodel,iris[1:10,-5],probability=TRUE)
write.csv(pre1,file="svmpre.csv")

##naiveBayes
load('nbmodel.rda')
pre2<-predict(nbmodel,iris[1:10,-5],type="raw")
write.csv(pre2,file="nbpre.csv")


print("runningtime:")
proc.time() - ptm
