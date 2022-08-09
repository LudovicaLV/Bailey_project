library(readxl)
folder_name <- "/Users/ludovicaluisavissat/Desktop/Karen_capital/De-identified Raw Data"

Eswatini <- read_excel(paste(folder_name, "/eSwatini/finalexport-307entries.xlsx", sep = ""))
Lesotho1 <- read_excel(paste(folder_name, "/Lesotho/2002/cassidy2002panhandlesurvey.xlsx", sep = ""))
Lesotho2 <- read_excel(paste(folder_name, "/Lesotho/2009/VW Nthabiseng DRR Baseline HH Survey Master.xlsx", sep = ""))
Namibia <- read_excel(paste(folder_name, "/Namibia/Main Data Final Separated.xlsx", sep = ""), sheet = "Data Explanation")
Tanzania <- read_excel(paste(folder_name, "/Tanzania/Savanna HH_orig.xlsx", sep = ""))
Kazava <- read_excel(paste(folder_name, "/KAZAVA/kaza2017-18hhjitteredcoordsV3.xlsx", sep = ""), sheet = "datasheet")

countries <- list(Eswatini, Lesotho1, Lesotho2, Namibia, Tanzania, Kazava)

indices3 <- list()
for (i in 1:6){
  indices3[[i]] <- list()
}
for (j in 1:11){
  indices3[[i]][[j]] <- c()
}

##choose which country (i represents position in list "countries")
i <- 1
names(countries[[i]])

#Eswatini
#initial (extra information)
indices3[[1]][[1]] <- c(1:8, 11)
#Human  
indices3[[1]][[2]] <- c(10, 28:30, 162:165) #10: age moved here for dependency ratio
#Financial
indices3[[1]][[3]] <- c(31:34, 52:55, 90:91, 94:97, 104:105) 
#Natural
indices3[[1]][[4]] <- c(36:51, 56:71, 110:115, 117:121)
#Physical
indices3[[1]][[5]] <- c(12:27, 72:89, 106:109) 
#Social 
indices3[[1]][[6]] <- c(92:93, 122:136, 211:213) #212:213 perception of safety
#food
indices3[[1]][[7]] <- c(98:102, 137:161)
#exposure/loss
indices3[[1]][[8]] <- c(116, 166:171)
#adaptation
indices3[[1]][[9]] <- c(103, 172:185) #116, 166, 184: not clear from column name, but connected to vulnerability
#indices still not classified
indices3[[1]][[10]] <- c(186:210) #189:202: potentially social/human capital
#to exclude
indices3[[1]][[11]] <- c(9, 35)
#9: gender
#35: "unlikely to be easy to include in an analysis"

#Lesotho 1

#initial 
indices3[[2]][[1]] <- c(1:10, 30:58, 76:78)
#Human  
indices3[[2]][[2]] <- c(13:29, 59, 80, 91)
#Financial
indices3[[2]][[3]] <- c(79, 81:90, 103:113) #103:113: need to be indexed
#Natural
indices3[[2]][[4]] <- c(142:170, 178:184, 185:205, 213:216, 224:232, 240:248, 256:259, 267:270, 278:282, 290:293, 300:301) #154: contains a lot of NAs
#Physical
indices3[[2]][[5]] <- c(114:140)
#Social
indices3[[2]][[6]] <- c(11:12) 
#food
indices3[[2]][[7]] <- c()
#drought/adaptation/fire
#exposure/loss
indices3[[2]][[8]] <- c(171:176, 207:211, 217:222, 233:238, 249:254, 260:265, 271:276, 283:288, 294:299, 302:307) #206 NA
#adaptation
indices3[[2]][[9]] <- c(92:102, 177, 212, 223, 239, 255, 266, 277, 289)
#indices still not classified - not present in the code book (all except 308:310)
indices3[[2]][[10]] <- c(141)
#to exclude
indices3[[2]][[11]] <- c(60, 61:75, 308:315)
#60 exclude max ed
#61:75 redundancy for education info
#308:315 to ignore for now

#Lesotho 2

#initial 
indices3[[3]][[1]] <- c(1:4, 6:59, 98:100) 
#Human  
indices3[[3]][[2]] <- c(60:85, 86:97, 101:110, 122:125, 126:130, 381:383) #86:97 to be indexed
#Financial
indices3[[3]][[3]] <- c(111:121, 131:146, 174:178, 263, 266, 269, 272, 275, 278, 281, 284, 287, 290, 339:345) #263: working on other people's land here? 
#Natural
indices3[[3]][[4]] <- c(186:262, 264:265, 267:268, 270:271, 273:274, 276:277, 279:280, 282:283, 285:286, 288:289, 291:304, 305:309, 323:338, 346:352, 362:367) #338: left livestock water source here, 346:352 animals slaughtered here? 
#Physical
indices3[[3]][[5]] <- c(148:171)
#Social 
indices3[[3]][[6]] <- c(361, 408, 411:418)
#food
indices3[[3]][[7]] <- c()
#exposure/loss
indices3[[3]][[8]] <- c(310:321,353:360, 368:380,384:385)
#adaptation
indices3[[3]][[9]] <- c(322, 386:396, 403:407, 409:410, 419:440)
#indices still not classified
indices3[[3]][[10]] <- c(5, 147, 172:173, 179:184, 185, 402)
#not in code book: 5, 147
#172:173: likely physical, but consult literature
#179:184 food questions - to discuss (perhaps aid?)
#185: empty column 
#397:401: asking if something would have helped: still adaptation?

#to exclude
indices3[[3]][[11]] <- c(397:401) #choice to be evaluated
  
#Namibia

#the indices are already calculated:
(sum_value - sum_min)/(sum_max-sum_min)

#Tanzania
#bartered - to be add to social and to be removed from natural
bart <- c(17, 53, 54, 229, 233, 281, 386, 486, 489, 490, 495, 496, 520, 521, 751, 752, 868, 869, 945, 946, 975, 976)
#initial 
indices3[[5]][[1]] <- c(11:12, 113, 196, 206:207, 228, 383:384, 438, 446:447, 511, 804, 879, 901:903, 908, 912, 956) 
#Human  
indices3[[5]][[2]] <- c(805:806, 882, 899)
#Financial
indices3[[5]][[3]] <- c(8, 18:19, 22, 24:26, 28:31, 37:39, 41, 48, 50, 55:56, 90:91, 95, 110, 112, 134, 163:164, 198:199, 226:227, 230:231, 235:237, 240, 268, 272, 282:283, 285, 287, 387:388, 437, 440, 452:453, 483, 485, 487:488, 491:492, 497:498, 513, 516, 518:519, 522:524, 528, 530, 679, 681, 725, 729:730, 753:754, 807:815, 820, 831, 835:836, 867, 870:871, 875, 877, 881, 884, 891, 895, 897, 947:948, 954, 977:978) #24:26 might be not monetary, so to exclude
#Natural
indices3[[5]][[4]] <- c(1:7, 17, 20:21, 47, 49, 53:54, 89, 94, 109, 111, 133, 159, 197, 208:209, 224, 229, 233:234, 267, 269, 281, 284, 286, 386, 439, 441:442, 482, 484, 486, 489:490, 495:496, 499:500, 504:506, 515, 520:521, 525:527, 529, 531:532, 678, 680, 724, 726, 751:752, 819, 830, 834, 866, 868:869, 874, 876, 880, 883, 890, 894, 896, 944:946, 953, 975:976) #20 to check
indices3[[5]][[4]] <- indices3[[5]][[4]][!indices3[[5]][[4]] %in% bart]
#Physical
indices3[[5]][[5]] <- c(9:10, 13, 45:46, 51:52, 57, 129:130, 195, 200, 210, 232, 238:239, 241, 244, 385, 389, 448, 501:503, 507:508, 517, 731, 801, 803, 821, 832:833, 872:873, 878, 892:893, 898, 904, 910, 936, 943, 949, 955)
#Social 
indices3[[5]][[6]] <- sort(c(450, 493:494, 911, 913, bart))
#food
indices3[[5]][[7]] <- c(14:16)
#exposure/loss
indices3[[5]][[8]] <- c(58:85, 97:98, 108, 136:151, 153:156, 161:162, 165:171, 173:185, 201:202, 204:205, 211:220, 225, 246:266, 454:467, 509, 715:723, 727:728, 837:838)
#adaptation
indices3[[5]][[9]] <- c(99:103, 105:107, 186:194, 468:477, 510)
#indices still not classified
indices3[[5]][[10]] <- c(23, 27, 32:36, 40, 42:44, 86:88, 92, 93, 96, 104,  135, 152, 157:158, 160, 172, 203, 221:223, 242:243, 245, 270:271, 273:280, 288:382, 390:428, 443:445, 449, 451, 478:481, 512, 514, 533:677, 682:714, 732:750, 755:800, 802, 816:818, 822, 839:865, 885:889, 900, 909, 914:935, 937:942, 950:952, 957:974)
#93, 96, 242:243: not in code book
#135, 152, 172, 203, 221: ? or empty description (in code book)
#273:280: government effectiveness
#288:381, 417: hunting companies benefit/feelings (e.g. sadness) 
#390:416: human-wildlife conflict
#418:428: immigration reason
#533:677 protected area benefit/feelings (e.g. sadness) 
#682:714, 755:798, 822: photo safari
#732:750: poaching
#839:865: experience shock
#885:889: theft livestock
#914:935, 937:941, 950:952, 957:974: wild animal issues/interactions

#to exclude
indices3[[5]][[11]] <- c(114:128, 131:132, 429:436, 823:829, 905:907)

#KAZAVA
#initial (extra information)
indices3[[6]][[1]] <- c(1:8)
#Human  
indices3[[6]][[2]] <- c(29:112) 
#Financial
indices3[[6]][[3]] <- c(156:198, 200:216, 325:326, 331:332, 337:338, 343:344, 349:350, 355:356, 361:362, 368:369, 374:375, 380:381, 386:387, 392:393, 398:399, 404:405, 446:447, 450:451, 454:455, 458:459, 462:463, 466:467, 470:471, 475:476, 479:480, 483:484, 487:488, 491:492, 495:496, 499:500, 534, 538:539, 708:749)
#Natural
ind <- c(270:274, 278:281, 321:324, 327:330, 333:336, 339:342, 345:348, 351:354, 357:360, 363, 364:367, 370:373, 376:379, 382:385, 388:391, 394:397, 400:403, 406:413, 444:445, 448:449, 452:453, 456:457, 460:461, 464:465, 468:469, 472, 473:474, 477:478, 481:482, 485:486, 489:490, 493:494, 497:498, 501:516, 540:707, 750:757) # 363, 472: could be draught/adaptation too TBD
ind_rem <- c(seq(502, 514, 4), seq(541, 703, 6), 751, 755)         
indices3[[6]][[4]] <- ind[!ind %in% ind_rem]
#Physical
indices3[[6]][[5]] <- c(219:269, 535)
#Social 
indices3[[6]][[6]] <- c(199, 517:530, 531:533, 536:537) #531:533 to be discussed
#food
indices3[[6]][[7]] <- c(113:155, 217:218)
#exposure/loss
indices3[[6]][[8]] <- c(282:320, 414:443)
#adaptation
indices3[[6]][[9]] <- c()
#indices still not classified
indices3[[6]][[10]] <- c(12:16, 275:277)
#275:277, 531:533 not in code book
#363, 472: natural or adaptation?
#517:530: some might belong to "adaptation"
#534:539: "social" or "financial"?

# 540:707: the travel mode in each of this question might belong to physical. Discuss and extract if needed.

#to exclude
indices3[[6]][[11]] <- c(9:11, 17:28, seq(502, 514, 4), seq(541, 703, 6), 751, 755, 758:759)
