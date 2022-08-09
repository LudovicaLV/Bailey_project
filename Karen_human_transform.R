index_of_interest <- 2 

for (i in 1:6){
  if (i == 4){
    print("#### 4 ####") 
  }else{
    print(names(countries[[i]][indices3[[i]][[index_of_interest]]]))
    print("########")
  }
}

entries <- list()
for (i in 1:6){
  entries[[i]] <- list()
}

for (i in c(1,2,3,5,6)){
  l <- length(indices3[[i]][[index_of_interest]])
  for (j in 1:l){
    k <- indices3[[i]][[index_of_interest]][j]
    entries[[i]][[j]] <- countries[[i]][k]
  }
}

u_entries <- list()
for (i in 1:6){
  u_entries[[i]] <- list()
}

for (i in c(1,2,3,5,6)){
  l <- length(indices3[[i]][[index_of_interest]])
  for (j in 1:l){
    k <- indices3[[i]][[index_of_interest]][j]
    u_entries[[i]][[j]] <- unique(countries[[i]][k])
  }
}


for (i in 1:6){
  if (i == 4){
    print("#### 4 ####") 
  }else{
    print(paste(indices3[[i]][[index_of_interest]], " ", names(countries[[i]][indices3[[i]][[index_of_interest]]]), sep = ""))
    print("########")
  }
}


###### Eswatini
human_l <- list()
li <- length(indices3[[1]][[index_of_interest]])

for (i in 1:li){
  print(i)
  print("######")
  print(names(countries[[1]][indices3[[1]][[index_of_interest]]])[i])
  print("######")
  ind <- indices3[[1]][[index_of_interest]][i]
  print(unique(countries[[1]][[ind]]))
  print("######")
}

#1: age (year, number, words)
#5 child_deaths: number and reason 
#5 adult_deaths: number
#7 clinic visits: number and sometimes reason
#child vaccination: yes all, yes some, no

#numerical:
#2, 3: number of children
#4: number of adults (2017?)

###### Lesotho 1
human_l <- list()
k <- 2
li <- length(indices3[[k]][[index_of_interest]])

for (i in 1:li){
  print(i)
  print("######")
  print(names(countries[[k]][indices3[[k]][[index_of_interest]]])[i])
  print("######")
  ind <- indices3[[k]][[index_of_interest]][i]
  print(unique(countries[[k]][[ind]]))
  print("######")
}

#already numerical
#1-15: age
#16: Ind
#17: prop_ind
#18: high_ed
#19: off-farm: 0/1
#20: no jobs

###### Lesotho 2
human_l <- list()
k <- 3
li <- length(indices3[[k]][[index_of_interest]])

for (i in 1:li){
  print(i)
  print("######")
  print(names(countries[[k]][indices3[[k]][[index_of_interest]]])[i])
  print("######")
  ind <- indices3[[k]][[index_of_interest]][i]
  print(unique(countries[[k]][[ind]]))
  print("######")
}

#numerical
#1-12: health ind
#13, 14: high and max ed
#15-26: education ind
#27-38: res ind
#39: smp
#40-48: age + dep
#49: off-farm 0/1
#50: no sb
#51: no farm
#52: no lv
#53: hh death
#54-57: age and sex death
#58-60: member diseases 1/2 (yes/no)


###### Tanzania
human_l <- list()
k <- 5
li <- length(indices3[[k]][[index_of_interest]])

for (i in 1:li){
  print(i)
  print("######")
  print(names(countries[[k]][indices3[[k]][[index_of_interest]]])[i])
  print("######")
  ind <- indices3[[k]][[index_of_interest]][i]
  print(unique(countries[[k]][[ind]]))
  print("######")
}

#4: trad. med.

#numerical
#1: religion (2?)
#3: swahili level

###### KAZAVA
human_l <- list()
k <- 6
li <- length(indices3[[k]][[index_of_interest]])

for (i in 1:li){
  print(i)
  print("######")
  print(names(countries[[k]][indices3[[k]][[index_of_interest]]])[i])
  print("######")
  ind <- indices3[[k]][[index_of_interest]][i]
  print(unique(countries[[k]][[ind]]))
  print("######")
}

#already numerical:
#1-12 :age
#13-24 : relation to HH head
#25-36 :parental status
#37-48 : health status
#49-60 : highest education
#61-72: resident
#73-84 : job title
