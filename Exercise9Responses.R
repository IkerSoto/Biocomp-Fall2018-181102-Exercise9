#Exercise 9
#Iker Soto
#Question 1
getwd()
setwd("Biocomp-Fall2018-181102-Exercise9")
cancerage<-read.table("Age_Averagenumbercases.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)
head(cancerage)
library(ggplot2)
a=ggplot(cancerage,aes(x=Age,y=Average.number.of.new.cases.per.year))+geom_point(color="red")+theme_classic()+
  stat_smooth(method = "lm") + ylab("Average number of cancer cases per year") 
a

#Question 2
data1<-read.table("data.txt",header = TRUE, sep = ",", stringsAsFactors = FALSE)
head(data1)
library(ggplot2)
b=ggplot(data=data1,aes(x=region,y=observations))
#Generating a bar plot of the means of the four populations
b+geom_bar(aes(fill=region),stat="summary", fun.y="mean",color="black")+theme_classic()+ylab("Mean of observations")

#Generating a scatter plot of all the observations
b+geom_jitter(aes(color=region))+theme_classic()

# The bar and scatter plot provide very different information about the properties of the data. By just looking at the bar
# plot one can conclude that the means of the four subsets, which are divided by region, are very similar; which might lead
# you to assume that since the means are similar the distributions of the data points must also be alike.However, when
# you observe the scatter plot you can see this is not the case.The distributions of the four groups are very different, the
# the east and west group have data points that span a really ample range in a continuous manner. In contrast, the data points of 
#the north and south region seem to be condesed in particular intervals. Another thing we can appreciate in the scatter plot 
#,which is missing from the bar plot of the mean observations, is the variation of the data. 
#In conclusion, both plots tell you a very different story:the bar plot suggests that the  four regional groups are very similar because the mean values 
#are very close to each other,meanwhile, the scatter plot shows that we are dealing with 
#four heterogeneous groups with very particular data distributions that look nothing alike.
