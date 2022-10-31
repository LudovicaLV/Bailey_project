#human
k <- 2
by_country <- subset(table_info, region_number==k)
by_country <- subset(by_country, Capitial == "Human")

c <- countries[[k]]
data_frame_final <- data.frame(ID = c(1:nrow(c)), country = rep(names_countries[k], nrow(c)))

for (j in c(1:nrow(by_country))){
  ind <- by_country$Index_in_indices3[j]
  c[,ind][c[,ind] == 98] <- NA
  max_res <- max(c[,ind], na.rm = TRUE)
  min_res <- min(c[,ind], na.rm = TRUE)
  new_c <- (c[,ind] - min_res)/(max_res - min_res)
  df <- data.frame(name = new_c)
  data_frame_final <- cbind(data_frame_final, df)
}

k <- 6
by_country <- subset(table_info, region_number==k)
by_country <- subset(by_country, Capitial == "Human")

c <- countries[[k]]
data_frame_final6 <- data.frame(ID = c(1:nrow(c)), country = rep(names_countries[k], nrow(c)))

for (j in c(1:nrow(by_country))){
  ind <- by_country$Index_in_indices3[j]
  c[,ind][c[,ind] == 98] <- NA
  max_res <- max(c[,ind], na.rm = TRUE)
  min_res <- min(c[,ind], na.rm = TRUE)
  new_c <- (c[,ind] - min_res)/(max_res - min_res)
  df <- data.frame(name = new_c)
  data_frame_final6 <- cbind(data_frame_final6, df)
}


df_final <- dplyr::full_join(data_frame_final, data_frame_final6)
write.csv(df_final, "Human.csv")