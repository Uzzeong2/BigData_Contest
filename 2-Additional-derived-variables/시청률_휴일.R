rm(list=ls())
shop_data<- read.csv("final_data_821.csv",header=T,sep=",") 

shop_data <-as.data.frame(shop_data)
shop_data$holiday <- as.character(shop_data$holiday)
library(tidyverse)
shop_data$week<- as.numeric(shop_data$week)
shop_data$Date<-as.Date(substr(shop_data$Date,1,10))
shop_data<- shop_data %>% filter(Product_group != '무형')



#휴일/비휴일


holiday_count0<-shop_data%>%filter(holiday=="0")%>%group_by(Date, time, Product_group)%>%
  summarize(count=n(), avg_viewingrate=sum(viewingrate)/count,holiday="0")
head(holiday_count)

holiday_count1<-shop_data%>%filter(holiday=="1")%>%group_by( Product_group)%>%
  summarize(count=n(), avg_viewingrate=sum(viewingrate)/count,holiday="1")

holiday_viewingrate<-rbind(holiday_count0,holiday_count1)
ggplot(data=holiday_viewingrate,aes(x=Product_group,y=avg_viewingrate,fill=holiday))+geom_bar(stat="identity",position='dodge')+ggtitle("휴일/비휴일 상푼군별 시청률 비교")


# 시청률(휴일)

holiday<-shop_data %>% filter(holiday==1)
holiday_count<-holiday %>% group_by(Product_group)%>%
  summarize(mean_viewingrate= sum(viewingrate)/117)

holiday_count

ggplot(data=holiday_count, aes(x=Product_group, y=mean_viewingrate))+
  geom_bar(stat='identity')+
  ggtitle("휴일 상품군 별 평균 시청률")

# 시청률(비휴일)

Nholiday<-shop_data %>% filter(holiday==0)
Nholiday_count<-holiday %>% group_by(Product_group)%>%
  summarize(mean_viewingrate= sum(viewingrate)/(365-117))

Nholiday_count

ggplot(data=Nholiday_count, aes(x=Product_group, y=mean_viewingrate))+
  geom_bar(stat='identity')+
  ggtitle("비휴일 상품군 별 평균 시청률")
















