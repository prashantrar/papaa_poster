library(ggplot2)
require(grid)
library(ggthemes)

df <- read.csv("CL_1DFIR_Profiling.csv",header=TRUE,sep=",")
pdf("CL_1DFIR_Profiling.pdf",width=4,height=3)

p<-ggplot(data=df,aes(group=factor(Device),color=factor(Device),x=Samples,y=Time))+
  geom_line(size=0.9)+
  geom_point(size=2)+
  scale_x_log10(breaks=c(64,128,256,512,1024),limits=c(60,1024),labels=c("64","128","256","512","1024"))+
  scale_y_log10()+
  scale_color_hue();

p + theme_fivethirtyeight() %+replace% theme(axis.title=element_text(),axis.title.y=theme_bw()$axis.title.y) +
  ylab('Time(us)')+xlab('Number of Samples')+
  theme(
    legend.position=c(0.18,1.0),
    legend.title=element_blank(),
    legend.background = element_rect(fill="transparent"),
    legend.key=element_blank(),
    legend.key.width=unit(0.4,"cm"),
    legend.key.height=unit(0.3,"cm"),
    plot.background=element_blank(),
    text = element_text(size=9),
    axis.text.x=element_text(angle=0,hjust=0.5,size=8),
    axis.text.y=element_text(angle=0,hjust=1,size=8),
    legend.text=element_text(size=8)) +
  theme(axis.line.x = element_line(color = 'black',size=0.5, linetype='solid'),axis.line.y = element_line(color = 'black',size=0.5, linetype='solid'))+
  theme(axis.line = element_line(colour = "black"),
        panel.border = element_blank(),
        panel.background = element_blank())+
  guides(
    color=guide_legend(ncol=1))
# + theme(axis.line.x = element_line(color = 'black'),
#       axis.line.y = element_line(color = 'black'))
