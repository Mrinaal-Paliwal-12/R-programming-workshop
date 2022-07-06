  #annova test
  
  attach(DietWeightLoss)
  str(DietWeightLoss)
  
  DietWeightLoss$Diet =as.factor(DietWeightLoss$Diet)
  levels(DietWeightLoss$Diet)
  
  png("WeightLoss vs DietType.jpeg")
  boxplot(DietWeightLoss$WeightLoss~DietWeightLoss$Diet)
  dev.off()
  
  #H0 weight loss in same for all diet types
  
  annovaRes= aov(DietWeightLoss$WeightLoss~DietWeightLoss$Diet)
  
  annovaRes$coefficients
