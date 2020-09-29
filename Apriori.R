install.packages("arules")
install.packages("arulesViz")
library(arulesViz)
library(arules)
groceries <- read.transactions("C:\\Users\\chris\\DMAssignment5\\dataset\\Market_Basket_Optimisation.csv", format='basket', sep=',')
groceries
summary(groceries)

aprioriFirstAttempt <- apriori(groceries,parameter = list(supp=0.01, conf=0.20, target = "rules", maxlen = 2))
summary(aprioriFirstAttempt)
inspect(aprioriFirstAttempt)

aprioriSecondAttempt <- apriori(groceries,parameter = list(supp=0.05, conf=0.25, target = "rules", maxlen = 3))
inspect(aprioriSecondAttempt)

aprioriThirdAttempt <- apriori(groceries,parameter = list(supp=0.50, conf=0.50, target = "rules", maxlen = 3))
inspect(aprioriThirdAttempt)
