hafizh <- data_hafizh[data_hafizh$Bedrooms==2,]  
View(hafizh)

hafizh$Bathrooms <- ifelse(hafizh$Bathrooms > 2, c("large"), c("small"))
View(hafizh)

hafizh$newvariable <- ifelse(hafizh$Offers > 2, c("large"), c("small")) 
View(hafizh)

hafizh$newvariable <- hafizh$Price/hafizh$SqFt
View(hafizh)

hafizh$newvariable<-NULL
View(hafizh)

data_hafizh.kolom1dan2 <- data_hafizh[,1:2] 
View(data_hafizh.kolom1dan2)

data_hafizh.kolom3dan4 <- data_hafizh[,3:4] 
View(data_hafizh.kolom3dan4)

data_hafizh.kolom1sd4<-cbind(data_hafizh.kolom1dan2, data_hafizh.kolom3dan4) 
View(data_hafizh.kolom1sd4)

data_hafizh.baris1sd3 <- data_hafizh[1:3,] 
data_hafizh.baris4sd6 <- data_hafizh[4:6,] 
data_hafizh.baris1sd6 <- rbind(data_hafizh.baris1sd3, data_hafizh.baris4sd6) 
View(data_hafizh.baris1sd6)

data_hafizh.sort<-data_hafizh[order(data_hafizh$Price),] 
View(data_hafizh.sort)
