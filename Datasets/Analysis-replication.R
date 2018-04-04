#Author: Parisa Lak
#This is the analysis for the replication paper on
#Reducing False Alarm in Software Defect Prediction by Decision Threshold Optimization
#presentation at DSL on April 6 2018
#---------------------------------------
#Exploratory Data Analysis
library (Hmisc)
Path_mac <- "/Users/parisabanoo81/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets"
Path_ubuntu<- "~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/"
setwd(Path_mac)
ar1_wh <- read.csv("ar1-wh.csv")
describe(ar1_wh)
cat("number of attributes is:", ncol(ar1_wh)-1 )

ar3_wh <- read.csv("ar3-wh.csv")
describe(ar3_wh$defects)
cat("number of attributes is:", ncol(ar3_wh)-1 )

ar4_wh <- read.csv("ar4-wh.csv")
describe(ar4_wh$defects)
cat("number of attributes is:", ncol(ar4_wh)-1 )

ar5_wh <- read.csv("ar5-wh.csv")
describe(ar5_wh$defects)
cat("number of attributes is:", ncol(ar5_wh)-1 )

ar6_wh <- read.csv("ar6-wh.csv")
describe(ar6_wh$defects)
cat("number of attributes is:", ncol(ar6_wh)-1 )

jm1_wh <- read.csv("jm1-wh.csv")
describe(jm1_wh$defects)
cat("number of attributes is:", ncol(jm1_wh)-1 )

kc1_wh <- read.csv("kc1-wh.csv")
describe(kc1_wh$defects)
cat("number of attributes is:", ncol(kc1_wh)-1 )

kc2_wh <- read.csv("kc2-wh.csv")
describe(kc2_wh$defects)
cat("number of attributes is:", ncol(kc2_wh)-1 )

kc3_wh <- read.csv("kc3-wh.csv")
describe(kc3_wh$Defective)
cat("number of attributes is:", ncol(kc3_wh)-1 )

mc2_wh <- read.csv("mc2-wh.csv")
describe(mc2_wh$Defective)
cat("number of attributes is:", ncol(mc2_wh)-1 )

pc1_wh <- read.csv("pc1-wh.csv")
describe(pc1_wh$Defective)
cat("number of attributes is:", ncol(pc1_wh)-1 )

pc3_wh <- read.csv("pc3-wh.csv")
describe(pc3_wh$Defective)
cat("number of attributes is:", ncol(pc3_wh)-1 )

#----------------------------------
#Naive Bayes Classifier implementation
#10 fold cross validation uses the i loop
#the threshold for naive bayes is set in the j loop
install.packages("e1071")
library(e1071)
library(caret)
set.seed(1)
#Specify the dataset in hand
Data<-ar5_wh
describe(Data)
#log transformation for preprocessing
Data[,1:(ncol(Data)-1)]<-log(Data[,1:(ncol(Data)-1)]+1)

#Randomly shuffle the data
Data<-Data[sample(nrow(Data)),]

#Create 10 equally size folds
folds <- cut(seq(1,nrow(Data)),breaks=2,labels=FALSE)

#Perform 10 fold cross validation
TP<-0
FP<-0
FN<-0
TN<-0
distance<-0 #computes the distance for each fold
pf<-0
pd<-0
pd_j<-0#pd for each threshold value
pf_j<-0#pf for eahc threshold value
dist<-0 #distance for each threshold value
thresholds = seq(0.1, 0.9, by = 0.1)
for (j in thresholds){
for(i in 1:2){
  #Segement your data by fold using the which() function 
  testIndexes <- which(folds==i,arr.ind=TRUE)
  testData <- Data[testIndexes, ]
  trainData <- Data[-testIndexes, ]
  #Training Naive Bayes Classifier
  model <- naiveBayes(defects ~ ., data = trainData)
  preds <- predict(model, newdata = testData, type= "raw") #with the type being raw we get the probabilities
  class_prediction<- ifelse(preds>(j), "Y","N") #this is where the threshold is specified
  conf_matrix<-table(class_prediction[,2],testData$defects)
  print (conf_matrix)
  TP[i] = conf_matrix[4]
  FP[i] = conf_matrix[2]
  FN[i]= conf_matrix[3]
  TN[i] =conf_matrix[1]
 # pd[i] = TP[i]/(TP[i]+FN[i])
 # pf[i]= FP[i]/(FP[i]+TN[i])
 # distance[i] = sqrt((1-pd[i])^2+(0-pf[i])^2)
}
  TP_j<-sum(TP)
  FP_j<-sum(FP)
  TN_j<-sum(TN)
  FN_j<-sum(FN)
  pf_j[10*j]<-FP_j/(FP_j+TN_j)
  pd_j[10*j]<-TP_j/(TP_j+FN_j)
  dist[10*j]<-sqrt((1-pd_j[10*j])^2+(0-pf_j[10*j])^2)
cat("The mean distance for j=", (j), "is", dist[10*j])
}
plot(pf_j,pd_j,type="l", main = "ar5", ylab= "pd", xlab="pf")
cat("the minimum distance is", min(dist), "with j =",which.min(dist)/10 )
cat("Here are the results with the default threshold (t = 0.5): pd=", pd_j[5],"pf=",pf_j[5], "bal=",(1-dist[5]))
cat("Here are the results for the optimum threshold: pd=", pd_j[which.min(dist)],"pf=",pf_j[which.min(dist)], "bal=",(1-dist[which.min(dist)]))




