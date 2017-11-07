Gambia = read.csv("C:/Users/Vinai/Documents/Stat 440/Case Study 3/gambiaMissing.csv")

sum(is.na(Gambia$BEDNET))
install.packages("MICE")
mean(Gambia$Y)
mean(Gambia$PHC)
mean(Gambia$AGE)
#Conduct EDA, decide MAR vs MCAR, and have a proposal for further analysis
plot(y = Gambia$AGE, x = 1:nrow(Gambia))
unique(Gambia$AGE)
hist(Gambia$AGE)
table(Gambia$AGE)
library(dplyr)
library(knitr)
table(Gambia$AGE) %>% kable()
x = table(Gambia$AGE)
kable(x)
cor(Gambia$AGE, Gambia$GREEN)
cor(Gambia$AGE, Gambia$BEDNET, use = "complete.obs")
cor(Gambia$GREEN, Gambia$BEDNET, use = "complete.obs")
cor(Gambia$PHC, Gambia$BEDNET, use = "complete.obs")
#Y is the variable we want to predict
cor(Gambia$Y, Gambia$AGE)
plot(x = Gambia$AGE, y = Gambia$GREEN)
#Just do some tabulations and correlation analysis
#Run a couple models without the BEDNET