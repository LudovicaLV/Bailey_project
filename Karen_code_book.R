#create sub-categories by indices

#human: n.2
#financial: n.3
#natural: n.4
#physical: n.5
#social: n.6
#food: n.7
#exposure/loss: n.8
#adaptation: n.9

ind_of_interest <- 5

for (i in 1:6){
  if (i == 4){
    print("#### 4 ####") 
  }else{
    print(names(countries[[i]][indices3[[i]][[ind_of_interest]]]))
    print("########")
  }
}


#social 
code_book_Lesotho2 <- read_excel(paste(folder_name, "/Lesotho/2009/WV Nthabiseng DRR Household survey codebook draft1.xls", sep = ""))
nL <- names(countries[[3]][indices3[[3]][[ind_of_interest]]])
for (i in 1:length(nL)){
  m <- match(nL[i], code_book_Lesotho2$`Variable Name`)
  print(code_book_Lesotho2$`Label and Corresponding Question Number`[m])
}

code_book_Tanzania <- read_excel(paste(folder_name, "/Tanzania/Master Variables List - HH.xlsx", sep = ""))
nL <- names(countries[[5]][indices3[[5]][[ind_of_interest]]])
for (i in 1:length(nL)){
  m <- match(nL[i], code_book_Tanzania$Variable)
  print(code_book_Tanzania$Description[m])
}

code_book_Kazava <- Kazava <- read_excel(paste(folder_name, "/KAZAVA/kaza2017-18hhjitteredcoordsV3.xlsx", sep = ""), sheet = "codes")
nL <- names(countries[[6]][indices3[[6]][[ind_of_interest]]])
for (i in 1:length(nL)){
  m <- match(nL[i], code_book_Kazava$`VARIABLE NAME`)
  print(code_book_Kazava$LABEL[m])
}

#human
code_book_Lesotho1 <- read_excel(paste(folder_name, "/Lesotho/2002/Cassidy 2002 Panhandle Survey code book.xls", sep = ""))
nL <- names(countries[[2]][indices3[[2]][[ind_of_interest]]])
ind_to_check <- indices3[[2]][[ind_of_interest]]
for (i in 1:length(nL)){
  m <- match(toupper(nL[i]), code_book_Lesotho1$`Field Name`)
  print(paste(ind_to_check[i], code_book_Lesotho1$`Referent on Questionnaire (Q.X)`[m]))
}       

code_book_Lesotho2 <- read_excel(paste(folder_name, "/Lesotho/2009/WV Nthabiseng DRR Household survey codebook draft1.xls", sep = ""))
nL <- names(countries[[3]][indices3[[3]][[ind_of_interest]]])
ind_to_check <- indices3[[3]][[ind_of_interest]]
for (i in 1:length(nL)){
  m <- match(nL[i], code_book_Lesotho2$`Variable Name`)
  print(paste(ind_to_check[i], code_book_Lesotho2$`Label and Corresponding Question Number`[m]))
}

code_book_Tanzania <- read_excel(paste(folder_name, "/Tanzania/Master Variables List - HH.xlsx", sep = ""))
nL <- names(countries[[5]][indices3[[5]][[ind_of_interest]]])
ind_to_check <- indices3[[5]][[ind_of_interest]]
for (i in 1:length(nL)){
  m <- match(nL[i], code_book_Tanzania$Variable)
  print(paste(ind_to_check[i], code_book_Tanzania$Description[m]))
}

code_book_Kazava <- Kazava <- read_excel(paste(folder_name, "/KAZAVA/kaza2017-18hhjitteredcoordsV3.xlsx", sep = ""), sheet = "codes")
nL <- names(countries[[6]][indices3[[6]][[ind_of_interest]]])
ind_to_check <- indices3[[6]][[ind_of_interest]]
for (i in 1:length(nL)){
  m <- match(nL[i], code_book_Kazava$`VARIABLE NAME`)
  print(paste(ind_to_check[i], code_book_Kazava$LABEL[m]))
}

#financial 
code_book_Lesotho1 <- read_excel(paste(folder_name, "/Lesotho/2002/Cassidy 2002 Panhandle Survey code book.xls", sep = ""))
nL <- names(countries[[2]][indices3[[2]][[ind_of_interest]]])
for (i in 1:length(nL)){
  m <- match( toupper(nL[i]), code_book_Lesotho1$`Field Name`)
  print(code_book_Lesotho1$`Referent on Questionnaire (Q.X)`[m])
}       

