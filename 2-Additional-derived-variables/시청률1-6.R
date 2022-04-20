rm(list=ls())
library(readxl)
data<- read.csv("시청률정리용.csv",header=T,sep=",") 
# 시청률정리용.csv는 주최측에서 준 파일.
viewing_rate<- read_excel("watching.xlsx")
viewing_rate<- as.data.frame(viewing_rate)
viewing_rate<- viewing_rate[-c(1:240),] 
viewing_rate<- viewing_rate[-1201,]
time<- subset(data,select=c("방송일시","노출.분."))
time<- na.omit(time)
names(time)<- c("date","exposure_time")
time$t<- seq(1,length(time$exposure_time),by=1)

time1_1<- time[c(1:56),]
time1_1$cumtime<- cumsum(time1_1$exposure_time)
jan_1<- matrix(0,56,1)
for(i in 1:56){
  jan_1[i,]<- round(mean(viewing_rate[,2][(time1_1$cumtime[i]-time1_1$exposure_time[i]+1):time1_1$cumtime[i]]),5)
}
jan_1

time1_2<- time[c(57:113),]
time1_2$cumtime<- cumsum(time1_2$exposure_time)
jan_2<- matrix(0,57,1)
for(i in 1:57){
  jan_2[i,]<- round(mean(viewing_rate[,3][(time1_2$cumtime[i]-time1_2$exposure_time[i]+1):time1_2$cumtime[i]]),5)
}
jan_2


time1_3<- time[c(114:172),]
time1_3$cumtime<- cumsum(time1_3$exposure_time)
jan_3<- matrix(0,59,1)
for(i in 1:59){
  jan_3[i,]<- round(mean(viewing_rate[,4][(time1_3$cumtime[i]-time1_3$exposure_time[i]+1):time1_3$cumtime[i]]),5)
}
jan_3


time1_4<- time[c(173:230),]
time1_4$cumtime<- cumsum(time1_4$exposure_time)
jan_4<- matrix(0,58,1)
for(i in 1:58){
  jan_4[i,]<- round(mean(viewing_rate[,5][(time1_4$cumtime[i]-time1_4$exposure_time[i]+1):time1_4$cumtime[i]]),5)
}
jan_4


time1_5<- time[c(231:287),]
time1_5$cumtime<- cumsum(time1_5$exposure_time)
jan_5<- matrix(0,57,1)
for(i in 1:57){
  jan_5[i,]<- round(mean(viewing_rate[,6][(time1_5$cumtime[i]-time1_5$exposure_time[i]+1):time1_5$cumtime[i]]),5)
}
jan_5


time1_6<- time[c(288:344),]
time1_6$cumtime<- cumsum(time1_6$exposure_time)
jan_6<- matrix(0,57,1)
for(i in 1:57){
  jan_6[i,]<- round(mean(viewing_rate[,7][(time1_6$cumtime[i]-time1_6$exposure_time[i]+1):time1_6$cumtime[i]]),5)
}
jan_6


time1_7<- time[c(345:402),]
time1_7$cumtime<- cumsum(time1_7$exposure_time)
jan_7<- matrix(0,58,1)
for(i in 1:58){
  jan_7[i,]<- round(mean(viewing_rate[,8][(time1_7$cumtime[i]-time1_7$exposure_time[i]+1):time1_7$cumtime[i]]),5)
}
jan_7



time1_8<- time[c(403:460),]
time1_8$cumtime<- cumsum(time1_8$exposure_time)
jan_8<- matrix(0,58,1)
for(i in 1:58){
  jan_8[i,]<- round(mean(viewing_rate[,9][(time1_8$cumtime[i]-time1_8$exposure_time[i]+1):time1_8$cumtime[i]]),5)
}
jan_8


time1_9<- time[c(461:518),]
time1_9$cumtime<- cumsum(time1_9$exposure_time)
jan_9<- matrix(0,58,1)
for(i in 1:58){
  jan_9[i,]<- round(mean(viewing_rate[,10][(time1_9$cumtime[i]-time1_9$exposure_time[i]+1):time1_9$cumtime[i]]),5)
}
jan_9


time1_10<- time[c(519:577),]
time1_10$cumtime<- cumsum(time1_10$exposure_time)
jan_10<- matrix(0,59,1)
for(i in 1:59){
  jan_10[i,]<- round(mean(viewing_rate[,11][(time1_10$cumtime[i]-time1_10$exposure_time[i]+1):time1_10$cumtime[i]]),5)
}
jan_10


time1_11<- time[c(578:634),]
time1_11$cumtime<- cumsum(time1_11$exposure_time)
jan_11<- matrix(0,57,1)
for(i in 1:57){
  jan_11[i,]<- round(mean(viewing_rate[,12][(time1_11$cumtime[i]-time1_11$exposure_time[i]+1):time1_11$cumtime[i]]),5)
}
jan_11


time1_12<- time[c(635:690),]
time1_12$cumtime<- cumsum(time1_12$exposure_time)
jan_12<- matrix(0,56,1)
for(i in 1:56){
  jan_12[i,]<- round(mean(viewing_rate[,13][(time1_12$cumtime[i]-time1_12$exposure_time[i]+1):time1_12$cumtime[i]]),5)
}
jan_12


time1_13<- time[c(691:744),]
time1_13$cumtime<- cumsum(time1_13$exposure_time)
jan_13<- matrix(0,54,1)
for(i in 1:54){
  jan_13[i,]<- round(mean(viewing_rate[,14][(time1_13$cumtime[i]-time1_13$exposure_time[i]+1):time1_13$cumtime[i]]),5)
}
jan_13


time1_14<- time[c(745:802),]
time1_14$cumtime<- cumsum(time1_14$exposure_time)
jan_14<- matrix(0,58,1)
for(i in 1:58){
  jan_14[i,]<- round(mean(viewing_rate[,15][(time1_14$cumtime[i]-time1_14$exposure_time[i]+1):time1_14$cumtime[i]]),5)
}
jan_14


time1_15<- time[c(803:861),]
time1_15$cumtime<- cumsum(time1_15$exposure_time)
jan_15<- matrix(0,58,1)
for(i in 1:58){
  jan_15[i,]<- round(mean(viewing_rate[,16][(time1_15$cumtime[i]-time1_15$exposure_time[i]+1):time1_15$cumtime[i]]),5)
}
jan_15


time1_16<- time[c(862:920),]
time1_16$cumtime<- cumsum(time1_16$exposure_time)
jan_16<- matrix(0,59,1)
for(i in 1:59){
  jan_16[i,]<- round(mean(viewing_rate[,17][(time1_16$cumtime[i]-time1_16$exposure_time[i]+1):time1_16$cumtime[i]]),5)
}
jan_16

time1_17<- time[c(921:977),]
time1_17$cumtime<- cumsum(time1_17$exposure_time)
jan_17<- matrix(0,57,1)
for(i in 1:57){
  jan_17[i,]<- round(mean(viewing_rate[,18][(time1_17$cumtime[i]-time1_17$exposure_time[i]+1):time1_17$cumtime[i]]),5)
}
jan_17


time1_18<- time[c(978:1036),]
time1_18$cumtime<- cumsum(time1_18$exposure_time)
jan_18<- matrix(0,59,1)
for(i in 1:59){
  jan_18[i,]<- round(mean(viewing_rate[,19][(time1_18$cumtime[i]-time1_18$exposure_time[i]+1):time1_18$cumtime[i]]),5)
}
jan_18


time1_19<- time[c(1037:1094),]
time1_19$cumtime<- cumsum(time1_19$exposure_time)
jan_19<- matrix(0,58,1)
for(i in 1:58){
  jan_19[i,]<- round(mean(viewing_rate[,20][(time1_19$cumtime[i]-time1_19$exposure_time[i]+1):time1_19$cumtime[i]]),5)
}
jan_19


time1_19<- time[c(1037:1094),]
time1_19$cumtime<- cumsum(time1_19$exposure_time)
jan_19<- matrix(0,58,1)
for(i in 1:58){
  jan_19[i,]<- round(mean(viewing_rate[,20][(time1_19$cumtime[i]-time1_19$exposure_time[i]+1):time1_19$cumtime[i]]),5)
}
jan_19


time1_20<- time[c(1095:1152),]
time1_20$cumtime<- cumsum(time1_20$exposure_time)
jan_20<- matrix(0,58,1)
for(i in 1:58){
  jan_20[i,]<- round(mean(viewing_rate[,21][(time1_20$cumtime[i]-time1_20$exposure_time[i]+1):time1_20$cumtime[i]]),5)
}
jan_20


time1_21<- time[c(1153:1210),]
time1_21$cumtime<- cumsum(time1_21$exposure_time)
jan_21<- matrix(0,58,1)
for(i in 1:58){
  jan_21[i,]<- round(mean(viewing_rate[,22][(time1_21$cumtime[i]-time1_21$exposure_time[i]+1):time1_21$cumtime[i]]),5)
}
jan_21


time1_22<- time[c(1211:1268),]
time1_22$cumtime<- cumsum(time1_22$exposure_time)
jan_22<- matrix(0,58,1)
for(i in 1:58){
  jan_22[i,]<- round(mean(viewing_rate[,23][(time1_22$cumtime[i]-time1_22$exposure_time[i]+1):time1_22$cumtime[i]]),5)
}
jan_22


time1_23<- time[c(1269:1325),]
time1_23$cumtime<- cumsum(time1_23$exposure_time)
jan_23<- matrix(0,57,1)
for(i in 1:57){
  jan_23[i,]<- round(mean(viewing_rate[,24][(time1_23$cumtime[i]-time1_23$exposure_time[i]+1):time1_23$cumtime[i]]),5)
}
jan_23


time1_24<- time[c(1326:1384),]
time1_24$cumtime<- cumsum(time1_24$exposure_time)
jan_24<- matrix(0,59,1)
for(i in 1:59){
  jan_24[i,]<- round(mean(viewing_rate[,25][(time1_24$cumtime[i]-time1_24$exposure_time[i]+1):time1_24$cumtime[i]]),5)
}
jan_24


time1_25<- time[c(1385:1439),]
time1_25$cumtime<- cumsum(time1_25$exposure_time)
jan_25<- matrix(0,55,1)
for(i in 1:55){
  jan_25[i,]<- round(mean(viewing_rate[,26][(time1_25$cumtime[i]-time1_25$exposure_time[i]+1):time1_25$cumtime[i]]),5)
}
jan_25


time1_26<- time[c(1440:1497),]
time1_26$cumtime<- cumsum(time1_26$exposure_time)
jan_26<- matrix(0,58,1)
for(i in 1:58){
  jan_26[i,]<- round(mean(viewing_rate[,27][(time1_26$cumtime[i]-time1_26$exposure_time[i]+1):time1_26$cumtime[i]]),5)
}
jan_26


time1_27<- time[c(1498:1556),]
time1_27$cumtime<- cumsum(time1_27$exposure_time)
jan_27<- matrix(0,59,1)
for(i in 1:59){
  jan_27[i,]<- round(mean(viewing_rate[,28][(time1_27$cumtime[i]-time1_27$exposure_time[i]+1):time1_27$cumtime[i]]),5)
}
jan_27


time1_28<- time[c(1557:1615),]
time1_28$cumtime<- cumsum(time1_28$exposure_time)
jan_28<- matrix(0,59,1)
for(i in 1:59){
  jan_28[i,]<- round(mean(viewing_rate[,29][(time1_28$cumtime[i]-time1_28$exposure_time[i]+1):time1_28$cumtime[i]]),5)
}
jan_28


time1_29<- time[c(1616:1673),]
time1_29$cumtime<- cumsum(time1_29$exposure_time)
jan_29<- matrix(0,58,1)
for(i in 1:58){
  jan_29[i,]<- round(mean(viewing_rate[,30][(time1_29$cumtime[i]-time1_29$exposure_time[i]+1):time1_29$cumtime[i]]),5)
}
jan_29


time1_30<- time[c(1674:1732),]
time1_30$cumtime<- cumsum(time1_30$exposure_time)
jan_30<- matrix(0,59,1)
for(i in 1:59){
  jan_30[i,]<- round(mean(viewing_rate[,31][(time1_30$cumtime[i]-time1_30$exposure_time[i]+1):time1_30$cumtime[i]]),5)
}
jan_30


time1_31<- time[c(1733:1786),]
time1_31$cumtime<- cumsum(time1_31$exposure_time)
jan_31<- matrix(0,54,1)
for(i in 1:54){
  jan_31[i,]<- round(mean(viewing_rate[,32][-c(1021:1080)][(time1_31$cumtime[i]-time1_31$exposure_time[i]+1):time1_31$cumtime[i]]),5)
}
jan_31

jan<- rbind(jan_1,jan_2,jan_3,jan_4,jan_5,jan_6,jan_7,jan_8,jan_9,jan_10,jan_11,jan_12,jan_13,jan_14,jan_15,jan_16,jan_17,jan_18,jan_19,jan_20,
            jan_21,jan_22,jan_23,jan_24,jan_25,jan_26,jan_27,jan_28,jan_29,jan_30,jan_31)
jan


time2_1<- time[c(1787:1844),]
time2_1$cumtime<- cumsum(time2_1$exposure_time)
feb_1<- matrix(0,58,1)
for(i in 1:58){
  feb_1[i,]<- round(mean(viewing_rate[,33][(time2_1$cumtime[i]-time2_1$exposure_time[i]+1):time2_1$cumtime[i]]),5)
}
feb_1


time2_2<- time[c(1845:1902),]
time2_2$cumtime<- cumsum(time2_2$exposure_time)
feb_2<- matrix(0,58,1)
for(i in 1:58){
  feb_2[i,]<- round(mean(viewing_rate[,34][(time2_2$cumtime[i]-time2_2$exposure_time[i]+1):time2_2$cumtime[i]]),5)
}
feb_2


time2_3<- time[c(1903:1961),]
time2_3$cumtime<- cumsum(time2_3$exposure_time)
feb_3<- matrix(0,59,1)
for(i in 1:59){
  feb_3[i,]<- round(mean(viewing_rate[,35][(time2_3$cumtime[i]-time2_3$exposure_time[i]+1):time2_3$cumtime[i]]),5)
}
feb_3


time2_4<- time[c(1962:2018),]
time2_4$cumtime<- cumsum(time2_4$exposure_time)
feb_4<- matrix(0,57,1)
for(i in 1:57){
  feb_4[i,]<- round(mean(viewing_rate[,36][(time2_4$cumtime[i]-time2_4$exposure_time[i]+1):time2_4$cumtime[i]]),5)
}
feb_4


time2_5<- time[c(2019:2075),]
time2_5$cumtime<- cumsum(time2_5$exposure_time)
feb_5<- matrix(0,57,1)
for(i in 1:57){
  feb_5[i,]<- round(mean(viewing_rate[,37][(time2_5$cumtime[i]-time2_5$exposure_time[i]+1):time2_5$cumtime[i]]),5)
}
feb_5


time2_6<- time[c(2076:2135),]
time2_6$cumtime<- cumsum(time2_6$exposure_time)
feb_6<- matrix(0,60,1)
for(i in 1:60){
  feb_6[i,]<- round(mean(viewing_rate[,38][(time2_6$cumtime[i]-time2_6$exposure_time[i]+1):time2_6$cumtime[i]]),5)
}
feb_6


time2_7<- time[c(2136:2193),]
time2_7$cumtime<- cumsum(time2_7$exposure_time)
feb_7<- matrix(0,58,1)
for(i in 1:58){
  feb_7[i,]<- round(mean(viewing_rate[,39][(time2_7$cumtime[i]-time2_7$exposure_time[i]+1):time2_7$cumtime[i]]),5)
}
feb_7


time2_8<- time[c(2194:2252),]
time2_8$cumtime<- cumsum(time2_8$exposure_time)
feb_8<- matrix(0,59,1)
for(i in 1:59){
  feb_8[i,]<- round(mean(viewing_rate[,40][(time2_8$cumtime[i]-time2_8$exposure_time[i]+1):time2_8$cumtime[i]]),5)
}
feb_8


time2_9<- time[c(2253:2309),]
time2_9$cumtime<- cumsum(time2_9$exposure_time)
feb_9<- matrix(0,57,1)
for(i in 1:57){
  feb_9[i,]<- round(mean(viewing_rate[,41][(time2_9$cumtime[i]-time2_9$exposure_time[i]+1):time2_9$cumtime[i]]),5)
}
feb_9


time2_10<- time[c(2310:2368),]
time2_10$cumtime<- cumsum(time2_10$exposure_time)
feb_10<- matrix(0,59,1)
for(i in 1:59){
  feb_10[i,]<- round(mean(viewing_rate[,42][(time2_10$cumtime[i]-time2_10$exposure_time[i]+1):time2_10$cumtime[i]]),5)
}
feb_10


time2_11<- time[c(2369:2425),]
time2_11$cumtime<- cumsum(time2_11$exposure_time)
feb_11<- matrix(0,57,1)
for(i in 1:57){
  feb_11[i,]<- round(mean(viewing_rate[,43][(time2_11$cumtime[i]-time2_11$exposure_time[i]+1):time2_11$cumtime[i]]),5)
}
feb_11


time2_12<- time[c(2426:2483),]
time2_12$cumtime<- cumsum(time2_12$exposure_time)
feb_12<- matrix(0,58,1)
for(i in 1:58){
  feb_12[i,]<- round(mean(viewing_rate[,44][(time2_12$cumtime[i]-time2_12$exposure_time[i]+1):time2_12$cumtime[i]]),5)
}
feb_12


time2_13<- time[c(2484:2541),]
time2_13$cumtime<- cumsum(time2_13$exposure_time)
feb_13<- matrix(0,58,1)
for(i in 1:58){
  feb_13[i,]<- round(mean(viewing_rate[,45][(time2_13$cumtime[i]-time2_13$exposure_time[i]+1):time2_13$cumtime[i]]),5)
}
feb_13


time2_14<- time[c(2542:2599),]
time2_14$cumtime<- cumsum(time2_14$exposure_time)
feb_14<- matrix(0,58,1)
for(i in 1:58){
  feb_14[i,]<- round(mean(viewing_rate[,46][(time2_14$cumtime[i]-time2_14$exposure_time[i]+1):time2_14$cumtime[i]]),5)
}
feb_14


time2_15<- time[c(2600:2657),]
time2_15$cumtime<- cumsum(time2_15$exposure_time)
feb_15<- matrix(0,58,1)
for(i in 1:58){
  feb_15[i,]<- round(mean(viewing_rate[,47][(time2_15$cumtime[i]-time2_15$exposure_time[i]+1):time2_15$cumtime[i]]),5)
}
feb_15


time2_16<- time[c(2658:2715),]
time2_16$cumtime<- cumsum(time2_16$exposure_time)
feb_16<- matrix(0,58,1)
for(i in 1:58){
  feb_16[i,]<- round(mean(viewing_rate[,48][(time2_16$cumtime[i]-time2_16$exposure_time[i]+1):time2_16$cumtime[i]]),5)
}
feb_16


time2_17<- time[c(2716:2775),]
time2_17$cumtime<- cumsum(time2_17$exposure_time)
feb_17<- matrix(0,59,1)
for(i in 1:59){
  feb_17[i,]<- round(mean(viewing_rate[,49][(time2_17$cumtime[i]-time2_17$exposure_time[i]+1):time2_17$cumtime[i]]),5)
}
feb_17


time2_18<- time[c(2776:2834),]
time2_18$cumtime<- cumsum(time2_18$exposure_time)
feb_18<- matrix(0,59,1)
for(i in 1:59){
  feb_18[i,]<- round(mean(viewing_rate[,50][(time2_18$cumtime[i]-time2_18$exposure_time[i]+1):time2_18$cumtime[i]]),5)
}
feb_18


time2_19<- time[c(2835:2891),]
time2_19$cumtime<- cumsum(time2_19$exposure_time)
feb_19<- matrix(0,57,1)
for(i in 1:57){
  feb_19[i,]<- round(mean(viewing_rate[,51][(time2_19$cumtime[i]-time2_19$exposure_time[i]+1):time2_19$cumtime[i]]),5)
}
feb_19



time2_20<- time[c(2892:2948),]
time2_20$cumtime<- cumsum(time2_20$exposure_time)
feb_20<- matrix(0,57,1)
for(i in 1:57){
  feb_20[i,]<- round(mean(viewing_rate[,52][(time2_20$cumtime[i]-time2_20$exposure_time[i]+1):time2_20$cumtime[i]]),5)
}
feb_20


time2_21<- time[c(2949:3007),]
time2_21$cumtime<- cumsum(time2_21$exposure_time)
feb_21<- matrix(0,59,1)
for(i in 1:59){
  feb_21[i,]<- round(mean(viewing_rate[,53][(time2_21$cumtime[i]-time2_21$exposure_time[i]+1):time2_21$cumtime[i]]),5)
}
feb_21


time2_22<- time[c(3008:3065),]
time2_22$cumtime<- cumsum(time2_22$exposure_time)
feb_22<- matrix(0,58,1)
for(i in 1:58){
  feb_22[i,]<- round(mean(viewing_rate[,54][(time2_22$cumtime[i]-time2_22$exposure_time[i]+1):time2_22$cumtime[i]]),5)
}
feb_22


time2_23<- time[c(3066:3122),]
time2_23$cumtime<- cumsum(time2_23$exposure_time)
feb_23<- matrix(0,57,1)
for(i in 1:57){
  feb_23[i,]<- round(mean(viewing_rate[,55][(time2_23$cumtime[i]-time2_23$exposure_time[i]+1):time2_23$cumtime[i]]),5)
}
feb_23


time2_24<- time[c(3123:3181),]
time2_24$cumtime<- cumsum(time2_24$exposure_time)
feb_24<- matrix(0,59,1)
for(i in 1:59){
  feb_24[i,]<- round(mean(viewing_rate[,56][(time2_24$cumtime[i]-time2_24$exposure_time[i]+1):time2_24$cumtime[i]]),5)
}
feb_24

time2_25<- time[c(3182:3240),]
time2_25$cumtime<- cumsum(time2_25$exposure_time)
feb_25<- matrix(0,59,1)
for(i in 1:59){
  feb_25[i,]<- round(mean(viewing_rate[,57][(time2_25$cumtime[i]-time2_25$exposure_time[i]+1):time2_25$cumtime[i]]),5)
}
feb_25


time2_26<- time[c(3241:3296),]
time2_26$cumtime<- cumsum(time2_26$exposure_time)
feb_26<- matrix(0,56,1)
for(i in 1:56){
  feb_26[i,]<- round(mean(viewing_rate[,58][(time2_26$cumtime[i]-time2_26$exposure_time[i]+1):time2_26$cumtime[i]]),5)
}
feb_26


time2_27<- time[c(3297:3355),]
time2_27$cumtime<- cumsum(time2_27$exposure_time)
feb_27<- matrix(0,59,1)
for(i in 1:59){
  feb_27[i,]<- round(mean(viewing_rate[,59][(time2_27$cumtime[i]-time2_27$exposure_time[i]+1):time2_27$cumtime[i]]),5)
}
feb_27


time2_28<- time[c(3356:3413),]
time2_28$cumtime<- cumsum(time2_28$exposure_time)
feb_28<- matrix(0,58,1)
for(i in 1:58){
  feb_28[i,]<- round(mean(viewing_rate[,60][(time2_28$cumtime[i]-time2_28$exposure_time[i]+1):time2_28$cumtime[i]]),5)
}
feb_28


feb<- rbind(feb_1,feb_2,feb_3,feb_4,feb_5,feb_6,feb_7,feb_8,feb_9,feb_10,feb_11,feb_12,feb_13,feb_14,feb_15,feb_16,feb_17,feb_18,feb_19,feb_20,
            feb_21,feb_22,feb_23,feb_24,feb_25,feb_26,feb_27,feb_28)



time3_1<- time[c(3414:3473),]
time3_1$cumtime<- cumsum(time3_1$exposure_time)
mar_1<- matrix(0,60,1)
for(i in 1:60){
  mar_1[i,]<- round(mean(viewing_rate[,61][(time3_1$cumtime[i]-time3_1$exposure_time[i]+1):time3_1$cumtime[i]]),5)
}
mar_1


time3_2<- time[c(3474:3530),]
time3_2$cumtime<- cumsum(time3_2$exposure_time)
mar_2<- matrix(0,57,1)
for(i in 1:57){
  mar_2[i,]<- round(mean(viewing_rate[,62][(time3_2$cumtime[i]-time3_2$exposure_time[i]+1):time3_2$cumtime[i]]),5)
}
mar_2


time3_3<- time[c(3531:3588),]
time3_3$cumtime<- cumsum(time3_3$exposure_time)
mar_3<- matrix(0,58,1)
for(i in 1:58){
  mar_3[i,]<- round(mean(viewing_rate[,63][(time3_3$cumtime[i]-time3_3$exposure_time[i]+1):time3_3$cumtime[i]]),5)
}
mar_3


time3_4<- time[c(3589:3645),]
time3_4$cumtime<- cumsum(time3_4$exposure_time)
mar_4<- matrix(0,57,1)
for(i in 1:57){
  mar_4[i,]<- round(mean(viewing_rate[,64][(time3_4$cumtime[i]-time3_4$exposure_time[i]+1):time3_4$cumtime[i]]),5)
}
mar_4


time3_5<- time[c(3646:3704),]
time3_5$cumtime<- cumsum(time3_5$exposure_time)
mar_5<- matrix(0,59,1)
for(i in 1:59){
  mar_5[i,]<- round(mean(viewing_rate[,65][(time3_5$cumtime[i]-time3_5$exposure_time[i]+1):time3_5$cumtime[i]]),5)
}
mar_5


time3_6<- time[c(3705:3764),]
time3_6$cumtime<- cumsum(time3_6$exposure_time)
mar_6<- matrix(0,60,1)
for(i in 1:60){
  mar_6[i,]<- round(mean(viewing_rate[,66][(time3_6$cumtime[i]-time3_6$exposure_time[i]+1):time3_6$cumtime[i]]),5)
}
mar_6


time3_7<- time[c(3765:3821),]
time3_7$cumtime<- cumsum(time3_7$exposure_time)
mar_7<- matrix(0,57,1)
for(i in 1:57){
  mar_7[i,]<- round(mean(viewing_rate[,67][(time3_7$cumtime[i]-time3_7$exposure_time[i]+1):time3_7$cumtime[i]]),5)
}
mar_7


time3_8<- time[c(3822:3880),]
time3_8$cumtime<- cumsum(time3_8$exposure_time)
mar_8<- matrix(0,58,1)
for(i in 1:58){
  mar_8[i,]<- round(mean(viewing_rate[,68][(time3_8$cumtime[i]-time3_8$exposure_time[i]+1):time3_8$cumtime[i]]),5)
}
mar_8



time3_9<- time[c(3881:3935),]
time3_9$cumtime<- cumsum(time3_9$exposure_time)
mar_9<- matrix(0,55,1)
for(i in 1:55){
  mar_9[i,]<- round(mean(viewing_rate[,69][(time3_9$cumtime[i]-time3_9$exposure_time[i]+1):time3_9$cumtime[i]]),5)
}
mar_9


time3_10<- time[c(3936:3995),]
time3_10$cumtime<- cumsum(time3_10$exposure_time)
mar_10<- matrix(0,60,1)
for(i in 1:60){
  mar_10[i,]<- round(mean(viewing_rate[,70][(time3_10$cumtime[i]-time3_10$exposure_time[i]+1):time3_10$cumtime[i]]),5)
}
mar_10


time3_11<- time[c(3996:4054),]
time3_11$cumtime<- cumsum(time3_11$exposure_time)
mar_11<- matrix(0,58,1)
for(i in 1:58){
  mar_11[i,]<- round(mean(viewing_rate[,71][(time3_11$cumtime[i]-time3_11$exposure_time[i]+1):time3_11$cumtime[i]]),5)
}
mar_11


time3_12<- time[c(4055:4114),]
time3_12$cumtime<- cumsum(time3_12$exposure_time)
mar_12<- matrix(0,60,1)
for(i in 1:60){
  mar_12[i,]<- round(mean(viewing_rate[,72][(time3_12$cumtime[i]-time3_12$exposure_time[i]+1):time3_12$cumtime[i]]),5)
}
mar_12


time3_13<- time[c(4115:4173),]
time3_13$cumtime<- cumsum(time3_13$exposure_time)
mar_13<- matrix(0,59,1)
for(i in 1:59){
  mar_13[i,]<- round(mean(viewing_rate[,73][(time3_13$cumtime[i]-time3_13$exposure_time[i]+1):time3_13$cumtime[i]]),5)
}
mar_13


time3_14<- time[c(4174:4232),]
time3_14$cumtime<- cumsum(time3_14$exposure_time)
mar_14<- matrix(0,59,1)
for(i in 1:59){
  mar_14[i,]<- round(mean(viewing_rate[,74][(time3_14$cumtime[i]-time3_14$exposure_time[i]+1):time3_14$cumtime[i]]),5)
}
mar_14



time3_15<- time[c(4233:4292),]
time3_15$cumtime<- cumsum(time3_15$exposure_time)
mar_15<- matrix(0,60,1)
for(i in 1:60){
  mar_15[i,]<- round(mean(viewing_rate[,75][(time3_15$cumtime[i]-time3_15$exposure_time[i]+1):time3_15$cumtime[i]]),5)
}
mar_15


time3_16<- time[c(4293:4349),]
time3_16$cumtime<- cumsum(time3_16$exposure_time)
mar_16<- matrix(0,57,1)
for(i in 1:57){
  mar_16[i,]<- round(mean(viewing_rate[,76][(time3_16$cumtime[i]-time3_16$exposure_time[i]+1):time3_16$cumtime[i]]),5)
}
mar_16



time3_17<- time[c(4350:4408),]
time3_17$cumtime<- cumsum(time3_17$exposure_time)
mar_17<- matrix(0,59,1)
for(i in 1:59){
  mar_17[i,]<- round(mean(viewing_rate[,77][(time3_17$cumtime[i]-time3_17$exposure_time[i]+1):time3_17$cumtime[i]]),5)
}
mar_17



time3_18<- time[c(4409:4467),]
time3_18$cumtime<- cumsum(time3_18$exposure_time)
mar_18<- matrix(0,59,1)
for(i in 1:59){
  mar_18[i,]<- round(mean(viewing_rate[,78][(time3_18$cumtime[i]-time3_18$exposure_time[i]+1):time3_18$cumtime[i]]),5)
}
mar_18



time3_19<- time[c(4468:4525),]
time3_19$cumtime<- cumsum(time3_19$exposure_time)
mar_19<- matrix(0,58,1)
for(i in 1:58){
  mar_19[i,]<- round(mean(viewing_rate[,79][(time3_19$cumtime[i]-time3_19$exposure_time[i]+1):time3_19$cumtime[i]]),5)
}
mar_19


time3_20<- time[c(4526:4582),]
time3_20$cumtime<- cumsum(time3_20$exposure_time)
mar_20<- matrix(0,57,1)
for(i in 1:57){
  mar_20[i,]<- round(mean(viewing_rate[,80][(time3_20$cumtime[i]-time3_20$exposure_time[i]+1):time3_20$cumtime[i]]),5)
}
mar_20


time3_21<- time[c(4583:4639),]
time3_21$cumtime<- cumsum(time3_21$exposure_time)
mar_21<- matrix(0,57,1)
for(i in 1:57){
  mar_21[i,]<- round(mean(viewing_rate[,81][(time3_21$cumtime[i]-time3_21$exposure_time[i]+1):time3_21$cumtime[i]]),5)
}
mar_21


time3_22<- time[c(4640:4694),]
time3_22$cumtime<- cumsum(time3_22$exposure_time)
mar_22<- matrix(0,55,1)
for(i in 1:55){
  mar_22[i,]<- round(mean(viewing_rate[,82][(time3_22$cumtime[i]-time3_22$exposure_time[i]+1):time3_22$cumtime[i]]),5)
}
mar_22


time3_23<- time[c(4695:4751),]
time3_23$cumtime<- cumsum(time3_23$exposure_time)
mar_23<- matrix(0,57,1)
for(i in 1:57){
  mar_23[i,]<- round(mean(viewing_rate[,83][(time3_23$cumtime[i]-time3_23$exposure_time[i]+1):time3_23$cumtime[i]]),5)
}
mar_23


time3_24<- time[c(4752:4804),]
time3_24$cumtime<- cumsum(time3_24$exposure_time)
mar_24<- matrix(0,53,1)
for(i in 1:53){
  mar_24[i,]<- round(mean(viewing_rate[,84][-c(1:60)][(time3_24$cumtime[i]-time3_24$exposure_time[i]+1):time3_24$cumtime[i]]),5)
}
mar_24


time3_25<- time[c(4805:4861),]
time3_25$cumtime<- cumsum(time3_25$exposure_time)
mar_25<- matrix(0,57,1)
for(i in 1:57){
  mar_25[i,]<- round(mean(viewing_rate[,85][(time3_25$cumtime[i]-time3_25$exposure_time[i]+1):time3_25$cumtime[i]]),5)
}
mar_25


time3_26<- time[c(4862:4918),]
time3_26$cumtime<- cumsum(time3_26$exposure_time)
mar_26<- matrix(0,57,1)
for(i in 1:57){
  mar_26[i,]<- round(mean(viewing_rate[,86][(time3_26$cumtime[i]-time3_26$exposure_time[i]+1):time3_26$cumtime[i]]),5)
}
mar_26


time3_27<- time[c(4919:4973),]
time3_27$cumtime<- cumsum(time3_27$exposure_time)
mar_27<- matrix(0,55,1)
for(i in 1:55){
  mar_27[i,]<- round(mean(viewing_rate[,87][(time3_27$cumtime[i]-time3_27$exposure_time[i]+1):time3_27$cumtime[i]]),5)
}
mar_27


time3_28<- time[c(4974:5030),]
time3_28$cumtime<- cumsum(time3_28$exposure_time)
mar_28<- matrix(0,57,1)
for(i in 1:57){
  mar_28[i,]<- round(mean(viewing_rate[,88][(time3_28$cumtime[i]-time3_28$exposure_time[i]+1):time3_28$cumtime[i]]),5)
}
mar_28


time3_29<- time[c(5031:5085),]
time3_29$cumtime<- cumsum(time3_29$exposure_time)
mar_29<- matrix(0,55,1)
for(i in 1:55){
  mar_29[i,]<- round(mean(viewing_rate[,89][(time3_29$cumtime[i]-time3_29$exposure_time[i]+1):time3_29$cumtime[i]]),5)
}
mar_29


time3_30<- time[c(5086:5139),]
time3_30$cumtime<- cumsum(time3_30$exposure_time)
mar_30<- matrix(0,54,1)
for(i in 1:54){
  mar_30[i,]<- round(mean(viewing_rate[,90][(time3_30$cumtime[i]-time3_30$exposure_time[i]+1):time3_30$cumtime[i]]),5)
}
mar_30


time3_31<- time[c(5140:5195),]
time3_31$cumtime<- cumsum(time3_31$exposure_time)
mar_31<- matrix(0,56,1)
for(i in 1:56){
  mar_31[i,]<- round(mean(viewing_rate[,91][(time3_31$cumtime[i]-time3_31$exposure_time[i]+1):time3_31$cumtime[i]]),5)
}
mar_31


mar<- rbind(mar_1,mar_2,mar_3,mar_4,mar_5,mar_6,mar_7,mar_8,mar_9,mar_10,mar_11,mar_12,mar_13,mar_14,mar_15,mar_16,mar_17,mar_18,mar_19,mar_20,
            mar_21,mar_22,mar_23,mar_24,mar_25,mar_26,mar_27,mar_28,mar_29,mar_30,mar_31)

mar
jan_mar<- rbind(jan, feb, mar)
jan_mar
