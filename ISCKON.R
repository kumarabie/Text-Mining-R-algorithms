library(readxl)
data<-read_excel("iskcon.xlsx", sheet = 5)
data$source<- as.factor(data$source)
str(data)
colnames(data)
model<-lm(reviewrating~ source, data=data)
summary(model)

data$isweekend<-as.factor(data$isweekend)
model_new<-lm(reviewrating ~ isweekend ,data=data)
summary(model_new)

model1<-lm(reviewrating ~ source+isweekend+source*isweekend, data=data )
summary(model1)

chi_table<-table(data$source,data$reviewtype)
print(chi_table)
print(chisq.test(chi_table))


