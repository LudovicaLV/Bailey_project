table_info <- read.csv(file = 'comparing_common_questions_sub_categories_manual_responses_continuous.csv')

Eswatini <- read_excel(paste(folder_name, "/eSwatini/finalexport-307entries.xlsx", sep = ""))
Lesotho1 <- read_excel(paste(folder_name, "/Lesotho/2002/cassidy2002panhandlesurvey.xlsx", sep = ""))
Lesotho2 <- read_excel(paste(folder_name, "/Lesotho/2009/VW Nthabiseng DRR Baseline HH Survey Master.xlsx", sep = ""))
Namibia <- read_excel(paste(folder_name, "/Namibia/Main Data Final Separated.xlsx", sep = ""), sheet = "Modified_WBI_noDKMV", skip = 1)
Tanzania <- read_excel(paste(folder_name, "/Tanzania/Savanna HH_orig.xlsx", sep = ""))
Kazava <- read_excel(paste(folder_name, "/KAZAVA/kaza2017-18hhjitteredcoordsV3.xlsx", sep = ""), sheet = "datasheet")

countries <- list(Eswatini, Lesotho1, Lesotho2, Namibia, Tanzania, Kazava)
names_countries <- c("Eswatini", "Lesotho1", "Lesotho2", "Namibia", "Tanzania", "Kazava")

#social
k <- 2
by_country <- subset(table_info, region_number==k)
by_country <- subset(by_country, Capitial == "Social")

c <- countries[[k]]
data_frame_final <- data.frame(ID = c(1:nrow(c)), country = rep(names_countries[k], nrow(c)))

for (j in 1:nrow(by_country)){
  ind <- by_country$Index_in_indices3[j]
  max_res <- max(c[,ind], na.rm = TRUE)
  min_res <- min(c[,ind], na.rm = TRUE)
  new_c <- (c[,ind] - min_res)/(max_res - min_res)
  df <- data.frame(name = new_c)
  data_frame_final <- cbind(data_frame_final, df)
}

write.csv(data_frame_final, "Social.csv")

#financial
k <- 4
by_country <- subset(table_info, region_number==k)
by_country <- subset(by_country, Capitial == "Financial")

c <- countries[[k]]
data_frame_final4 <- data.frame(ID = c(1:nrow(c)), country = rep(names_countries[k], nrow(c)))

for (j in 1:nrow(by_country)){
  ind <- by_country$Index_in_indices3[j]
  max_res <- max(c[,ind], na.rm = TRUE)
  min_res <- min(c[,ind], na.rm = TRUE)
  new_c <- (c[,ind] - min_res)/(max_res - min_res)
  df <- data.frame(name = new_c)
  data_frame_final4 <- cbind(data_frame_final4, df)
}

k <- 5
by_country <- subset(table_info, region_number==k)
by_country <- subset(by_country, Capitial == "Financial")

c <- countries[[k]]
data_frame_final5 <- data.frame(ID = c(1:nrow(c)), country = rep(names_countries[k], nrow(c)))

for (j in c(1:3, 5:nrow(by_country))){
  ind <- by_country$Index_in_indices3[j]
  max_res <- max(c[,ind], na.rm = TRUE)
  min_res <- min(c[,ind], na.rm = TRUE)
  new_c <- (c[,ind] - min_res)/(max_res - min_res)
  df <- data.frame(name = new_c)
  data_frame_final5 <- cbind(data_frame_final5, df)
}

df_final <- dplyr::full_join(data_frame_final4, data_frame_final5)
write.csv(df_final, "Financial.csv")

#physical
k <- 5
by_country <- subset(table_info, region_number==k)
by_country <- subset(by_country, Capitial == "Physical")

c <- countries[[k]]
data_frame_final5 <- data.frame(ID = c(1:nrow(c)), country = rep(names_countries[k], nrow(c)))

for (j in c(1:nrow(by_country))){
  ind <- by_country$Index_in_indices3[j]
  max_res <- max(c[,ind], na.rm = TRUE)
  min_res <- min(c[,ind], na.rm = TRUE)
  new_c <- (c[,ind] - min_res)/(max_res - min_res)
  df <- data.frame(name = new_c)
  data_frame_final5 <- cbind(data_frame_final5, df)
}

write.csv(data_frame_final5, "Physical.csv")

