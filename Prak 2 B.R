data_hapis=read.delim("clipboard")
View(data_hapis)

hapis <- data_hapis[data_hapis$TinggiBadan==170, ]  
View(hapis)

data_hapis$TinggiBadan <- ifelse(data_hapis$TinggiBadan > 160, c("Tinggi"), c("Pendek"))
View(data_hapis)

data_hapis$Jurusan<- ("Infor22")
data_hapis$Fakultas<- ("FTI")
View(data_hapis)

data_hapis$Fakultas<-NULL
View(data_hapis)

data_hapis.kolom1dan2 <- data_hapis.kolom1dan2[,1:2] 
View(data_hapis.kolom1dan2)
data_hapis.kolom3dan4 <- data_hapis[,3:4] 
View(data_hapis.kolom3dan4)
data_hapis.kolom1sd4<-cbind(data_hapis.kolom1dan2, data_hapis.kolom3dan4)
View(data_hapis.kolom1sd4)

data_hapis.baris1sd5 <- data_hapis[1:5,] 
data_hapis.baris25sd30 <- data_hapis[25:30,] 
data_hapis.barisGabungan <- rbind(data_hapis.baris1sd5, data_hapis.baris25sd30) 
View(data_hapis.barisGabungan)

data_hapis.sort<-data_hapis[order(data_hapis$Waktu.Perjalanan),] 
View(data_hapis.sort)

