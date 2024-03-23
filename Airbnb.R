remove(list=ls())
library(readxl)
data<-read_excel("miami.xlsx", sheet=5)
hist(data$logreviews)

str(data)
regressor = lm(logreviews ~ price+
               rating +
               accommodates+
               extpeop+
               min_stay+
               sentiment+
               secdep+
               cleanfee+
               weekfee+
               monthfee+
               bedroom+
               bathroom+
               beds
               , data = data)
print(regressor)
summary(regressor)
