library(dplyr)
load("/cloud/project/Burrito/burritodata.Rda")
Potatoes = burrito %>%
          select(Reviewer,overall,Fries)
  
 


library(ggplot2)

lm_overall = lm(overall~Fries, data = Potatoes)  

potatoplot = ggplot(Potatoes)+
             geom_point(aes(x = Fries, y = overall))+
             geom_abline(aes(intercept=lm_overall$coefficients[1], 
                             slope = lm_overall$coefficients[2]))
potatoplot             
