library(readxl)
library(tidyverse)
shop_data<- read_("final_data_901.csv")
install.packages('xlsx')
library(xlsx)
write.xlsx(shop_data[c(1:38726),1], file="final_data_824_1.xlsx")

shop_data<-shop_data%>%filter(Product_group!="무형")
newcode<-read.csv("newcode_final.csv", header=T, sep=",")

for (i in 1:187){
  for(j in 37789){
    if(shop_data$Product_group[j]==newcode$Product_group[i]){
      shop_data$group0[j]<-as.character(newcode$group0[i])
    }
    if(shop_data$sub[j]==newcode$sub[i]){
      shop_data$group1[j]<-as.character(newcode$group1[i])
    }
    if(shop_data$subsub[j]==newcode$subsub[i]){
      shop_data$group2[j]<-as.character(newcode$group2[i])
    }
  }}
