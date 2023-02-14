library(processR)
library(foreign)
library(ggplot2)
library(dplyr)
a<-read.spss(choose.files(),to.data.frame=T,use.value.labels=F)
a2= data.frame(a[19:38],a[62:78])
head(a2[37])
a3= a2[!(a2[1]==9 |a2[2]==9 |a2[3]==9 |a2[4]==9 |a2[5]==9 |a2[6]==9 |a2[7]==9 |
          a2[8]==9 |a2[9]==9 |a2[10]==9 |a2[11]==9 |a2[12]==9 |a2[13]==9 |
          a2[14]==9 |a2[15]==9 |a2[16]==9 |a2[17]==9 |a2[18]==9 |a2[19]==9 |a2[20]==9 |
          a2[21]==9 |a2[22]==9 |a2[23]==9 |a2[24]==9 |a2[25]==9 |a2[26]==9 |a2[27]==9 |
          a2[28]==9 |a2[29]==9 |a2[30]==9 |a2[31]==9 |a2[32]==9 |a2[33]==9 |a2[34]==9 |
          a2[35]==9 |a2[36]==9 |a2[37]==9 ),]
a3[35:36]=abs(a3[35:36]-6)
nsp1=a3[1:9]
hom1=a3[10:20]
cm1=a3[21:27]
my1=a3[28:37]
nsp=rowSums(nsp1)/9
hom=rowSums(hom1)/11
cm=rowSums(cm1)/7
my=rowSums(my1)/10
da= data.frame(nsp,hom,cm,my)
write.csv(da,file="C:/data/wd/?????????.csv")

