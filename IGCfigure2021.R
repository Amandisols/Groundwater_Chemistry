library(tidyverse)


DATA <- read_csv("W3_Chemistry_all2020.csv")



x<- DATA %>%
  filter(LocationType %in% c('G1', 'G2', 'G3', 'G5'), GWType == "shallow", Site !="A9", Site !="A6", Site !="K9", Site !="K1s") %>%
  ggplot(aes(x=LocationType, y=pH, fill=LocationType)) + 
  geom_boxplot() +
  scale_fill_brewer(palette= "BrBG")+
  ylab("pH") +
  xlab(" ")+
  theme_classic()


x+ theme(legend.position = "none")

ggsave("igc1.png")


D<- DATA %>% filter(LocationType == "G5")
