#natural
k <- 1
by_country <- subset(table_info, region_number==k)
by_country <- subset(by_country, Capitial == "Natural")

c <- countries[[k]]
data_frame_final <- data.frame(ID = c(1:nrow(c)), country = rep(names_countries[k], nrow(c)))

for (j in c(1:nrow(by_country))){
  ind <- by_country$Index_in_indices3[j]
  max_res <- max(c[,ind], na.rm = TRUE)
  min_res <- min(c[,ind], na.rm = TRUE)
  new_c <- (c[,ind] - min_res)/(max_res - min_res)
  df <- data.frame(name = new_c)
  data_frame_final <- cbind(data_frame_final, df)
}

colnames(data_frame_final)[4] <- "fowl_own"
colnames(data_frame_final)[5] <- "goat_own"

#natural
k <- 2
by_country <- subset(table_info, region_number==k)
by_country <- subset(by_country, Capitial == "Natural")

c <- countries[[k]]
data_frame_final2 <- data.frame(ID = c(1:nrow(c)), country = rep(names_countries[k], nrow(c)))

for (j in c(1:nrow(by_country))){
  ind <- by_country$Index_in_indices3[j]
  max_res <- max(c[,ind], na.rm = TRUE)
  min_res <- min(c[,ind], na.rm = TRUE)
  new_c <- (c[,ind] - min_res)/(max_res - min_res)
  df <- data.frame(name = new_c)
  data_frame_final2 <- cbind(data_frame_final2, df)
}

#natural
k <- 3
by_country <- subset(table_info, region_number==k)
by_country <- subset(by_country, Capitial == "Natural")

c <- countries[[k]]
data_frame_final3 <- data.frame(ID = c(1:nrow(c)), country = rep(names_countries[k], nrow(c)))

for (j in c(1:nrow(by_country))){
  ind <- by_country$Index_in_indices3[j]
  max_res <- max(c[,ind], na.rm = TRUE)
  min_res <- min(c[,ind], na.rm = TRUE)
  new_c <- (c[,ind] - min_res)/(max_res - min_res)
  df <- data.frame(name = new_c)
  data_frame_final3 <- cbind(data_frame_final3, df)
}

#natural
k <- 4
by_country <- subset(table_info, region_number==k)
by_country <- subset(by_country, Capitial == "Natural")

c <- countries[[k]]
data_frame_final4 <- data.frame(ID = c(1:nrow(c)), country = rep(names_countries[k], nrow(c)))

for (j in c(1:nrow(by_country))){
  ind <- by_country$Index_in_indices3[j]
  max_res <- max(c[,ind], na.rm = TRUE)
  min_res <- min(c[,ind], na.rm = TRUE)
  new_c <- (c[,ind] - min_res)/(max_res - min_res)
  df <- data.frame(name = new_c)
  data_frame_final4 <- cbind(data_frame_final4, df)
}

colnames(data_frame_final4)[3] <- "cttl_own"

#natural
k <- 5
by_country <- subset(table_info, region_number==k)
by_country <- subset(by_country, Capitial == "Natural")

c <- countries[[k]]
data_frame_final5 <- data.frame(ID = c(1:nrow(c)), country = rep(names_countries[k], nrow(c)))

for (j in c(1:6, 9:nrow(by_country))){
  ind <- by_country$Index_in_indices3[j]
  max_res <- max(c[,ind], na.rm = TRUE)
  min_res <- min(c[,ind], na.rm = TRUE)
  new_c <- (c[,ind] - min_res)/(max_res - min_res)
  df <- data.frame(name = new_c)
  data_frame_final5 <- cbind(data_frame_final5, df)
}

colnames(data_frame_final5)[6] <- "cttl_own"
colnames(data_frame_final5)[5] <- "fowl_own"
colnames(data_frame_final5)[11] <- "pig_own"

#natural
k <- 6
by_country <- subset(table_info, region_number==k)
by_country <- subset(by_country, Capitial == "Natural")

c <- countries[[k]]
data_frame_final6 <- data.frame(ID = c(1:nrow(c)), country = rep(names_countries[k], nrow(c)))

for (j in c(1:nrow(by_country))){
  ind <- by_country$Index_in_indices3[j]
  max_res <- max(c[,ind], na.rm = TRUE)
  min_res <- min(c[,ind], na.rm = TRUE)
  new_c <- (c[,ind] - min_res)/(max_res - min_res)
  df <- data.frame(name = new_c)
  data_frame_final6 <- cbind(data_frame_final6, df)
}

colnames(data_frame_final6)[5] <- "cttl_own" 
colnames(data_frame_final6)[6] <- "goat_own" 
colnames(data_frame_final6)[7] <- "shp_own" 
colnames(data_frame_final6)[8] <- "dnky_own" 
colnames(data_frame_final6)[9] <- "hrse_own" 
colnames(data_frame_final6)[10] <- "poul_own" 
colnames(data_frame_final6)[11] <- "pig_own" 

df_final <- dplyr::full_join(data_frame_final, data_frame_final2)
df_final <- dplyr::full_join(df_final, data_frame_final3)
df_final <- dplyr::full_join(df_final, data_frame_final4)
df_final <- dplyr::full_join(df_final, data_frame_final5)
df_final <- dplyr::full_join(df_final, data_frame_final6)
write.csv(df_final, "Natural.csv")
