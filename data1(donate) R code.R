library(processR)
library(foreign)
library(ggplot2)
a<-read.spss(choose.files(),to.data.frame=T,use.value.labels=F)
head(a)
la<-list(X='skeptic',Y='donate',M='justify')
moderator=list(name=c("frame"),site=list(c("a",'c')),
               arr.pos=list(c(0.35),c(0.5)))
drawConcept(labels=la,moderator=moderator,,nodemode=1)
drawModel(labels=la,moderator=moderator,,nodemode=1)
process(data=a,y='donate',x='skeptic',m='justify',w='frame',model=8,boot=10000,bc=1,center=2,
        contrast=2,plot=1,seed=72520,save=2)
indrect=read.table("C:/data/wd/indrect.txt",header=T)
indrect$frame <- ifelse(indrect$frame==1,'framed','unframed')
ggplot(data=indrect,aes(x=skeptic,y=donate,group=frame)) +
  geom_line(aes(color=frame))
