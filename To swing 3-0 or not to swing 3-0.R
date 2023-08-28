library(ggplot2)
library(dplyr)
library(knitr)
library(baseballr)

#Making 2022 dataframe of pitching data
# week1 <- statcast_search(start_date = '2022-04-07', end_date = '2022-04-12')
# week2 <- statcast_search(start_date = '2022-04-13', end_date = '2022-04-18')
# week3 <- statcast_search(start_date = '2022-04-19', end_date = '2022-04-24')
# week4 <- statcast_search(start_date = '2022-04-25', end_date = '2022-04-30')
# week5 <- statcast_search(start_date = '2022-05-01', end_date = '2022-05-06')
# week6 <- statcast_search(start_date = '2022-05-07', end_date = '2022-05-12')
# week7 <- statcast_search(start_date = '2022-05-13', end_date = '2022-05-15')
# week70 <- statcast_search(start_date = '2022-05-16', end_date = '2022-05-18')
# week8 <- statcast_search(start_date = '2022-05-19', end_date = '2022-05-24')
# week9 <- statcast_search(start_date = '2022-05-25', end_date = '2022-05-30')
# week10 <- statcast_search(start_date = '2022-05-31', end_date = '2022-06-02')
# week101 <- statcast_search(start_date = '2022-06-03', end_date = '2022-06-05')
# week11 <- statcast_search(start_date = '2022-06-06', end_date = '2022-06-11')
# week12 <- statcast_search(start_date = '2022-06-12', end_date = '2022-06-17')
# week13 <- statcast_search(start_date = '2022-06-18', end_date = '2022-06-23')
# week14 <- statcast_search(start_date = '2022-06-24', end_date = '2022-06-26')
# week141 <- statcast_search(start_date = '2022-06-27', end_date = '2022-06-29')
# week15 <- statcast_search(start_date = '2022-06-30', end_date = '2022-07-02')
# week151 <- statcast_search(start_date = '2022-07-03', end_date = '2022-07-05')
# week16 <- statcast_search(start_date = '2022-07-06', end_date = '2022-07-11')
# week17 <- statcast_search(start_date = '2022-07-12', end_date = '2022-07-17')
# week18 <- statcast_search(start_date = '2022-07-18', end_date = '2022-07-23')
# week19 <- statcast_search(start_date = '2022-07-24', end_date = '2022-07-29')
# week20 <- statcast_search(start_date = '2022-07-30', end_date = '2022-08-04')
# week21 <- statcast_search(start_date = '2022-08-05', end_date = '2022-08-10')
# week22 <- statcast_search(start_date = '2022-08-11', end_date = '2022-08-16')
# week23 <- statcast_search(start_date = '2022-08-17', end_date = '2022-08-22')
# week24 <- statcast_search(start_date = '2022-08-23', end_date = '2022-08-28')
# week25 <- statcast_search(start_date = '2022-08-29', end_date = '2022-09-03')
# week26 <- statcast_search(start_date = '2022-09-04', end_date = '2022-09-09')
# week27 <- statcast_search(start_date = '2022-09-10', end_date = '2022-09-15')
# week28 <- statcast_search(start_date = '2022-09-16', end_date = '2022-09-21')
# week29 <- statcast_search(start_date = '2022-09-22', end_date = '2022-09-27')
# week30 <- statcast_search(start_date = '2022-09-28', end_date = '2022-10-03')
# week31 <- statcast_search(start_date = '2022-10-04', end_date = '2022-10-05')
# 
# x2022 <- rbind(week1, week2, week3, week4, week5, week6, week7, week70, week8, week9, 
#                week10, week101, week11, week12, week13, week14, week141, week15, week151, week16, week17, 
#                week18, week19, week20, week21, week22, week23, week24, week25,
#                week26, week27, week28, week29, week30, week31)
# 
# #Storing the dataframe in a csv then reloading it so that I don't have to load the data every time
# write.csv(x2022, file = 'C:\\Users\\brkea\\Desktop\\2022_season_pitch_data.csv')

#2021
# week10 <- statcast_search(start_date = '2021-04-01', end_date = '2021-04-06')
# week1 <- statcast_search(start_date = '2021-04-07', end_date = '2021-04-12')
# week2 <- statcast_search(start_date = '2021-04-13', end_date = '2021-04-18')
# week3 <- statcast_search(start_date = '2021-04-19', end_date = '2021-04-24')
# week4 <- statcast_search(start_date = '2021-04-25', end_date = '2021-04-30')
# week5 <- statcast_search(start_date = '2021-05-01', end_date = '2021-05-06')
# week6 <- statcast_search(start_date = '2021-05-07', end_date = '2021-05-12')
# week7 <- statcast_search(start_date = '2021-05-13', end_date = '2021-05-15')
# week70 <- statcast_search(start_date = '2021-05-16', end_date = '2021-05-18')
# week8 <- statcast_search(start_date = '2021-05-19', end_date = '2021-05-24')
# week9 <- statcast_search(start_date = '2021-05-25', end_date = '2021-05-30')
# week10 <- statcast_search(start_date = '2021-05-31', end_date = '2021-06-02')
# week101 <- statcast_search(start_date = '2021-06-03', end_date = '2021-06-05')
# week11 <- statcast_search(start_date = '2021-06-06', end_date = '2021-06-11')
# week12 <- statcast_search(start_date = '2021-06-12', end_date = '2021-06-17')
# week13 <- statcast_search(start_date = '2021-06-18', end_date = '2021-06-23')
# week14 <- statcast_search(start_date = '2021-06-24', end_date = '2021-06-26')
# week141 <- statcast_search(start_date = '2021-06-27', end_date = '2021-06-29')
# week15 <- statcast_search(start_date = '2021-06-30', end_date = '2021-07-02')
# week151 <- statcast_search(start_date = '2021-07-03', end_date = '2021-07-05')
# week16 <- statcast_search(start_date = '2021-07-06', end_date = '2021-07-11')
# week17 <- statcast_search(start_date = '2021-07-12', end_date = '2021-07-17')
# week18 <- statcast_search(start_date = '2021-07-18', end_date = '2021-07-23')
# week19 <- statcast_search(start_date = '2021-07-24', end_date = '2021-07-29')
# week20 <- statcast_search(start_date = '2021-07-30', end_date = '2021-08-04')
# week21 <- statcast_search(start_date = '2021-08-05', end_date = '2021-08-07')
# week210 <- statcast_search(start_date = '2021-08-08', end_date = '2021-08-10')
# week22 <- statcast_search(start_date = '2021-08-11', end_date = '2021-08-16')
# week23 <- statcast_search(start_date = '2021-08-17', end_date = '2021-08-22')
# week24 <- statcast_search(start_date = '2021-08-23', end_date = '2021-08-28')
# week25 <- statcast_search(start_date = '2021-08-29', end_date = '2021-09-03')
# week26 <- statcast_search(start_date = '2021-09-04', end_date = '2021-09-09')
# week27 <- statcast_search(start_date = '2021-09-10', end_date = '2021-09-15')
# week28 <- statcast_search(start_date = '2021-09-16', end_date = '2021-09-21')
# week29 <- statcast_search(start_date = '2021-09-22', end_date = '2021-09-27')
# week30 <- statcast_search(start_date = '2021-09-28', end_date = '2021-10-03')
#
# x2021 <- rbind(week10, week1, week2, week3, week4, week5, week6, week7, week70, week8, week9,
#                week10, week101, week11, week12, week13, week14, week141, week15, week151, week16, week17,
#                week18, week19, week20, week21, week210, week22, week23, week24, week25,
#                week26, week27, week28, week29, week30)
#
#
# #Storing the dataframe in a csv then reloading it so that I don't have to load the data every time
# write.csv(x2021, file = 'C:\\Users\\brkea\\Desktop\\2021_season_pitch_data.csv')



#2019
# week102 <- statcast_search(start_date = '2019-03-28', end_date = '2019-03-31')
# week10 <- statcast_search(start_date = '2019-04-01', end_date = '2019-04-06')
# week1 <- statcast_search(start_date = '2019-04-07', end_date = '2019-04-12')
# week2 <- statcast_search(start_date = '2019-04-13', end_date = '2019-04-18')
# week3 <- statcast_search(start_date = '2019-04-19', end_date = '2019-04-24')
# week4 <- statcast_search(start_date = '2019-04-25', end_date = '2019-04-30')
# week5 <- statcast_search(start_date = '2019-05-01', end_date = '2019-05-06')
# week6 <- statcast_search(start_date = '2019-05-07', end_date = '2019-05-09')
# week60 <- statcast_search(start_date = '2019-05-10', end_date = '2019-05-12')
# week7 <- statcast_search(start_date = '2019-05-13', end_date = '2019-05-15')
# week70 <- statcast_search(start_date = '2019-05-16', end_date = '2019-05-18')
# week8 <- statcast_search(start_date = '2019-05-19', end_date = '2019-05-24')
# week9 <- statcast_search(start_date = '2019-05-25', end_date = '2019-05-30')
# week10 <- statcast_search(start_date = '2019-05-31', end_date = '2019-06-02')
# week101 <- statcast_search(start_date = '2019-06-03', end_date = '2019-06-05')
# week11 <- statcast_search(start_date = '2019-06-06', end_date = '2019-06-11')
# week12 <- statcast_search(start_date = '2019-06-12', end_date = '2019-06-17')
# week13 <- statcast_search(start_date = '2019-06-18', end_date = '2019-06-23')
# week14 <- statcast_search(start_date = '2019-06-24', end_date = '2019-06-26')
# week141 <- statcast_search(start_date = '2019-06-27', end_date = '2019-06-29')
# week15 <- statcast_search(start_date = '2019-06-30', end_date = '2019-07-02')
# week151 <- statcast_search(start_date = '2019-07-03', end_date = '2019-07-05')
# week16 <- statcast_search(start_date = '2019-07-06', end_date = '2019-07-11')
# week17 <- statcast_search(start_date = '2019-07-12', end_date = '2019-07-17')
# week18 <- statcast_search(start_date = '2019-07-18', end_date = '2019-07-23')
# week19 <- statcast_search(start_date = '2019-07-24', end_date = '2019-07-29')
# week20 <- statcast_search(start_date = '2019-07-30', end_date = '2019-08-04')
# week21 <- statcast_search(start_date = '2019-08-05', end_date = '2019-08-07')
# week210 <- statcast_search(start_date = '2019-08-08', end_date = '2019-08-10')
# week22 <- statcast_search(start_date = '2019-08-11', end_date = '2019-08-16')
# week23 <- statcast_search(start_date = '2019-08-17', end_date = '2019-08-22')
# week24 <- statcast_search(start_date = '2019-08-23', end_date = '2019-08-28')
# week25 <- statcast_search(start_date = '2019-08-29', end_date = '2019-08-31')
# week250 <- statcast_search(start_date = '2019-09-01', end_date = '2019-09-03')
# week26 <- statcast_search(start_date = '2019-09-04', end_date = '2019-09-09')
# week27 <- statcast_search(start_date = '2019-09-10', end_date = '2019-09-15')
# week28 <- statcast_search(start_date = '2019-09-16', end_date = '2019-09-21')
# week29 <- statcast_search(start_date = '2019-09-22', end_date = '2019-09-27')
# week30 <- statcast_search(start_date = '2019-09-28', end_date = '2019-09-29')
# 
# x2019 <- rbind(week102, week10, week1, week2, week3, week4, week5, week6, week60, week7, week70, week8, week9,
#                week10, week101, week11, week12, week13, week14, week141, week15, week151, week16, week17,
#                week18, week19, week20, week21, week210, week22, week23, week24, week25,
#                week26, week27, week28, week29, week30)
# 
# 
# #Storing the dataframe in a csv then reloading it so that I don't have to load the data every time
# write.csv(x2019, file = 'C:\\Users\\brkea\\Desktop\\2019_season_pitch_data.csv')


x2019 <- read.csv('C:\\Users\\brkea\\Desktop\\2019_season_pitch_data.csv')
x2021 <- read.csv('C:\\Users\\brkea\\Desktop\\2021_season_pitch_data.csv')
x2022 <- read.csv('C:\\Users\\brkea\\Desktop\\2022_season_pitch_data.csv')



#wOBA and wRAA for 2022
wOBA2022 <- function(dataframe) {

HBP <- 0
for(sentence in dataframe[,'des']){
  if(grepl('hit by pitch', sentence)) {
    HBP <- HBP + 1
  }
}

BB <- 0
for(sentence in dataframe[,'des']){
  if(grepl('walk', sentence)) {
    BB <- BB + 1
  }
}
  
  
single <- 0
for(sentence in dataframe[,'des']){
  if(grepl('singles', sentence)) {
    single <- single + 1
  }
}

double <- 0
for(sentence in dataframe[,'des']){
  if(grepl('doubles', sentence)) {
    double <- double + 1
  }
}

triple <- 0
for(sentence in dataframe[,'des']){
  if(grepl('triples', sentence)) {
    triple <- triple + 1
  }
}

homer <- 0
for(sentence in dataframe[,'des']){
  if(grepl('homers', sentence)) {
    homer <- homer + 1
  }
}

SF <- 0
for(sentence in dataframe[,'des']){
  if(grepl('sacrifice', sentence)) {
    SF <- SF + 1
  }
}

# print(HBP)
# print(BB)
# print(SF)
# print(single)
# print(double)
# print(triple)
# print(homer)

WOBA <- (((.689*BB)+(.720*HBP)+(.884*single)+(1.261*double)+(1.601*triple)+(2.072*homer))/(length(dataframe[,'des'])))

WOBA <- round(WOBA, digits=3)

return(WOBA)

}



wRAA2022 <- function(count){
  WRAA <- (wOBA2022(count) - wOBA2022(x0b0s2022))/1.259
  
  WRAA <- round(WRAA, digits=3)
  
  return(WRAA)
}





#wOBA and wRAA for 2021

wOBA2021 <- function(dataframe) {
  
  HBP <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('hit by pitch', sentence)) {
      HBP <- HBP + 1
    }
  }
  
  BB <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('walk', sentence)) {
      BB <- BB + 1
    }
  }
  
  
  single <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('singles', sentence)) {
      single <- single + 1
    }
  }
  
  double <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('doubles', sentence)) {
      double <- double + 1
    }
  }
  
  triple <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('triples', sentence)) {
      triple <- triple + 1
    }
  }
  
  homer <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('homers', sentence)) {
      homer <- homer + 1
    }
  }
  
  SF <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('sacrifice', sentence)) {
      SF <- SF + 1
    }
  }
  
  # print(HBP)
  # print(BB)
  # print(SF)
  # print(single)
  # print(double)
  # print(triple)
  # print(homer)
  
  WOBA <- (((.692*BB)+(.722*HBP)+(.879*single)+(1.242*double)+(1.568*triple)+(2.007*homer))/(length(dataframe[,'des'])))
  
  WOBA <- round(WOBA, digits=3)
  
  return(WOBA)
  
}


wRAA2021 <- function(count){
  WRAA <- (wOBA2021(count) - wOBA2021(x0b0s2021))/1.209
  
  WRAA <- round(WRAA, digits=3)
  
  return(WRAA)
}




#wOBA and wRAA for 2019

wOBA2019 <- function(dataframe) {
  
  HBP <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('hit by pitch', sentence)) {
      HBP <- HBP + 1
    }
  }
  
  BB <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('walk', sentence)) {
      BB <- BB + 1
    }
  }
  
  
  single <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('singles', sentence)) {
      single <- single + 1
    }
  }
  
  double <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('doubles', sentence)) {
      double <- double + 1
    }
  }
  
  triple <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('triples', sentence)) {
      triple <- triple + 1
    }
  }
  
  homer <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('homers', sentence)) {
      homer <- homer + 1
    }
  }
  
  SF <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('sacrifice', sentence)) {
      SF <- SF + 1
    }
  }
  
  # print(HBP)
  # print(BB)
  # print(SF)
  # print(single)
  # print(double)
  # print(triple)
  # print(homer)
  
  WOBA <- (((.690*BB)+(.719*HBP)+(.870*single)+(1.217*double)+(1.529*triple)+(1.940*homer))/(length(dataframe[,'des'])))
  
  WOBA <- round(WOBA, digits=3)
  
  return(WOBA)
  
}


wRAA2019 <- function(count){
  WRAA <- (wOBA2019(count) - wOBA2019(x0b0s2019))/1.157
  
  WRAA <- round(WRAA, digits=3)
  
  return(WRAA)
}





#average wOBA
wOBA <- function(dataframe1, dataframe2, dataframe3) {
  WOBA <- (wOBA2022(dataframe1) + wOBA2021(dataframe2) + wOBA2019(dataframe3))/3
  WOBA <- round(WOBA, digits=3)
  return(WOBA)
  
}

#average wRAA
wRAA <- function(dataframe1, dataframe2, dataframe3) {
  WRAA <- (wRAA2022(dataframe1) + wRAA2021(dataframe2) + wRAA2019(dataframe3))/3
  WRAA <- round(WRAA, digits=3)
  return(WRAA)
  
}


#calculating ops
ops <- function(dataframe) {
  HBP <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('hit by pitch', sentence)) {
      HBP <- HBP + 1
    }
  }
  
  BB <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('walk', sentence)) {
      BB <- BB + 1
    }
  }
  
  
  single <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('singles', sentence)) {
      single <- single + 1
    }
  }
  
  double <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('doubles', sentence)) {
      double <- double + 1
    }
  }
  
  triple <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('triples', sentence)) {
      triple <- triple + 1
    }
  }
  
  homer <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('homers', sentence)) {
      homer <- homer + 1
    }
  }
  
  SF <- 0
  for(sentence in dataframe[,'des']){
    if(grepl('sacrifice', sentence)) {
      SF <- SF + 1
    }
  }
  
  OPS <- (single + double + triple + homer + BB + HBP)/(length(dataframe[,'des'])) + (single + 2*double + 3*triple + 4*homer)/(length(dataframe[,'des']) - BB - SF - HBP)
  OPS <- round(OPS, digits = 3)
  return(OPS)
}

  
#making the dataframe for each count for each year
x0b0s2019 <- x2019 %>% filter(balls == 0, strikes == 0)
x0b0s2021 <- x2021 %>% filter(balls == 0, strikes == 0)
x0b0s2022 <- x2022 %>% filter(balls == 0, strikes == 0)

x1b0s2019 <- x2019 %>% filter(balls == 1, strikes == 0)
x1b0s2021 <- x2021 %>% filter(balls == 1, strikes == 0)
x1b0s2022 <- x2022 %>% filter(balls == 1, strikes == 0)

x2b0s2019 <- x2019 %>% filter(balls == 2, strikes == 0)
x2b0s2021 <- x2021 %>% filter(balls == 2, strikes == 0)
x2b0s2022 <- x2022 %>% filter(balls == 2, strikes == 0)

x3b0s2019 <- x2019 %>% filter(balls == 3, strikes == 0)
x3b0s2021 <- x2021 %>% filter(balls == 3, strikes == 0)
x3b0s2022 <- x2022 %>% filter(balls == 3, strikes == 0)

x0b1s2019 <- x2019 %>% filter(balls == 0, strikes == 1)
x0b1s2021 <- x2021 %>% filter(balls == 0, strikes == 1)
x0b1s2022 <- x2022 %>% filter(balls == 0, strikes == 1)

x0b2s2019 <- x2019 %>% filter(balls == 0, strikes == 2)
x0b2s2019 <- x0b2s2019[!(x0b2s2019$description %in% c('foul')),]
x0b2s2021 <- x2021 %>% filter(balls == 0, strikes == 2)
x0b2s2021 <- x0b2s2021[!(x0b2s2021$description %in% c('foul')),]
x0b2s2022 <- x2022 %>% filter(balls == 0, strikes == 2)
x0b2s2022 <- x0b2s2022[!(x0b2s2022$description %in% c('foul')),]

x1b1s2019 <- x2019 %>% filter(balls == 1, strikes == 1)
x1b1s2021 <- x2021 %>% filter(balls == 1, strikes == 1)
x1b1s2022 <- x2022 %>% filter(balls == 1, strikes == 1)

x1b2s2019 <- x2019 %>% filter(balls == 1, strikes == 2)
x1b2s2019 <- x1b2s2019[!(x1b2s2019$description %in% c('foul')),]
x1b2s2021 <- x2021 %>% filter(balls == 1, strikes == 2)
x1b2s2021 <- x1b2s2021[!(x1b2s2021$description %in% c('foul')),]
x1b2s2022 <- x2022 %>% filter(balls == 1, strikes == 2)
x1b2s2022 <- x1b2s2022[!(x1b2s2022$description %in% c('foul')),]

x2b1s2019 <- x2019 %>% filter(balls == 2, strikes == 1)
x2b1s2021 <- x2021 %>% filter(balls == 2, strikes == 1)
x2b1s2022 <- x2022 %>% filter(balls == 2, strikes == 1)

x2b2s2019 <- x2019 %>% filter(balls == 2, strikes == 2)
x2b2s2019 <- x2b2s2019[!(x2b2s2019$description %in% c('foul')),]
x2b2s2021 <- x2021 %>% filter(balls == 2, strikes == 2)
x2b2s2021 <- x2b2s2021[!(x2b2s2021$description %in% c('foul')),]
x2b2s2022 <- x2022 %>% filter(balls == 2, strikes == 2)
x2b2s2022 <- x2b2s2022[!(x2b2s2022$description %in% c('foul')),]

x3b1s2019 <- x2019 %>% filter(balls == 3, strikes == 1)
x3b1s2021 <- x2021 %>% filter(balls == 3, strikes == 1)
x3b1s2022 <- x2022 %>% filter(balls == 3, strikes == 1)

x3b2s2019 <- x2019 %>% filter(balls == 3, strikes == 2)
x3b2s2019 <- x3b2s2019[!(x3b2s2019$description %in% c('foul')),]
x3b2s2021 <- x2021 %>% filter(balls == 3, strikes == 2)
x3b2s2021 <- x3b2s2021[!(x3b2s2021$description %in% c('foul')),]
x3b2s2022 <- x2022 %>% filter(balls == 3, strikes == 2)
x3b2s2022 <- x3b2s2022[!(x3b2s2022$description %in% c('foul')),]

x4balls2019 <- x2019 %>% filter(balls == 3)
x4balls2019 <- x4balls2019[!(x4balls2019$events %in% c('')),]
x4balls2019 <- x4balls2019[!(x4balls2019$description %in% c('hit_into_play', 'called_strike', 'swinging_strike', 'foul_tip', 'swinging_strike_blocked', 'hit_by_pitch')),]
x4balls2021 <- x2021 %>% filter(balls == 3)
x4balls2021 <- x4balls2021[!(x4balls2021$events %in% c('')),]
x4balls2021 <- x4balls2021[!(x4balls2021$description %in% c('hit_into_play', 'called_strike', 'swinging_strike', 'foul_tip', 'swinging_strike_blocked', 'hit_by_pitch')),]
x4balls2022 <- x2022 %>% filter(balls == 3)
x4balls2022 <- x4balls2022[!(x4balls2022$events %in% c('')),]
x4balls2022 <- x4balls2022[!(x4balls2022$description %in% c('hit_into_play', 'called_strike', 'swinging_strike', 'foul_tip', 'swinging_strike_blocked', 'hit_by_pitch')),]

strikeout2019 <- x2019 %>% filter(strikes == 2)
strikeout2019 <- strikeout2019[!(strikeout2019$events %in% c('', 'walk')),]
strikeout2019 <- strikeout2019[!(strikeout2019$description %in% c('hit_into_play', 'hit_by_pitch')),]
strikeout2021 <- x2021 %>% filter(strikes == 2)
strikeout2021 <- strikeout2021[!(strikeout2021$events %in% c('', 'walk')),]
strikeout2021 <- strikeout2021[!(strikeout2021$description %in% c('hit_into_play', 'hit_by_pitch')),]
strikeout2022 <- x2022 %>% filter(strikes == 2)
strikeout2022 <- strikeout2022[!(strikeout2022$events %in% c('', 'walk')),]
strikeout2022 <- strikeout2022[!(strikeout2022$description %in% c('hit_into_play', 'hit_by_pitch')),]


#WRAA of a strikeout
#KwRAA <- wRAA(strikeout2022, strikeout2021, strikeout2019)

#wRAA of a walk (.689 for wOBA of a walk)
#BBwRAA <- wRAA(x4balls2019, x4balls2021, x4balls2019)

#make dataframe with all the run values - update
# 
# df <- data.frame ('count'  = c('0-0','0-1', '0-2','1-0', '1-1', '1-2', '2-0', '2-1', '2-2', '3-0', '3-1', '3-2'),
#                   'start' = c(wOBA(x0b0s2022, x0b0s2021, x0b0s2019), wOBA(x0b1s2022, x0b1s2021, x0b1s2019), wOBA(x0b2s2022, x0b2s2021, x0b2s2019), wOBA(x1b0s2022, x1b0s2021, x1b0s2019), wOBA(x1b1s2022, x1b1s2021, x1b1s2019), wOBA(x1b2s2022, x1b2s2021, x1b2s2019), wOBA(x2b0s2022, x2b0s2021, x2b0s2019), wOBA(x2b1s2022, x2b1s2021, x2b1s2019),wOBA(x2b2s2022, x2b2s2021, x2b2s2019),wOBA(x3b0s2022, x3b0s2021, x3b0s2019),wOBA(x3b1s2022, x3b1s2021, x3b1s2019),wOBA(x3b2s2022, x3b2s2021, x3b2s2019)),
#                   'strike' = c(wOBA(x0b1s2022, x0b1s2021, x0b1s2019),wOBA(x0b2s2022, x0b2s2021, x0b2s2019), '0.000',wOBA(x1b1s2022, x1b1s2021, x1b1s2019),wOBA(x1b2s2022, x1b2s2021, x1b2s2019), '0.000',wOBA(x2b1s2022, x2b1s2021, x2b1s2019),wOBA(x2b2s2022, x2b2s2021, x2b2s2019), '0.000',wOBA(x3b1s2022, x3b1s2021, x3b1s2019),wOBA(x3b2s2022, x3b2s2021, x3b2s2019), '0.000'),
#                   'ball' = c(wOBA(x1b0s2022, x1b0s2021, x1b0s2019), wOBA(x1b1s2022, x1b1s2021, x1b1s2019), wOBA(x1b2s2022, x1b2s2021, x1b2s2019), wOBA(x2b0s2022, x2b0s2021, x2b0s2019), wOBA(x2b1s2022, x2b1s2021, x2b1s2019), wOBA(x2b2s2022, x2b2s2021, x2b2s2019), wOBA(x3b0s2022, x3b0s2021, x3b0s2019), wOBA(x3b1s2022, x3b1s2021, x3b1s2019), wOBA(x3b2s2022, x3b2s2021, x3b2s2019), '0.689', '0.689', '0.689'),
#                   'wRAA/PA' = c(wRAA(x0b0s2022, x0b0s2021, x0b0s2019), wRAA(x0b1s2022, x0b1s2021, x0b1s2019), wRAA(x0b2s2022, x0b2s2021, x0b2s2019), wRAA(x1b0s2022, x1b0s2021, x1b0s2019), wRAA(x1b1s2022, x1b1s2021, x1b1s2019), wRAA(x1b2s2022, x1b2s2021, x1b2s2019), wRAA(x2b0s2022, x2b0s2021, x2b0s2019), wRAA(x2b1s2022, x2b1s2021, x2b1s2019), wRAA(x2b2s2022, x2b2s2021, x2b2s2019),wRAA(x3b0s2022, x3b0s2021, x3b0s2019),wRAA(x3b1s2022, x3b1s2021, x3b1s2019),wRAA(x3b2s2022, x3b2s2021, x3b2s2019)),
#                   'Run Value of Strike' = c(wRAA(x0b1s2022, x0b1s2021, x0b1s2019) - wRAA(x0b0s2022, x0b0s2021, x0b0s2019), wRAA(x0b2s2022, x0b2s2021, x0b2s2019) - wRAA(x0b1s2022, x0b1s2021, x0b1s2019), KwRAA - wRAA(x0b2s2022, x0b2s2021, x0b2s2019), wRAA(x1b1s2022, x1b1s2021, x1b1s2019) - wRAA(x1b0s2022, x1b0s2021, x1b0s2019), wRAA(x1b2s2022, x1b2s2021, x1b2s2019) - wRAA(x1b1s2022, x1b1s2021, x1b1s2019), KwRAA - wRAA(x1b2s2022, x1b2s2021, x1b2s2019), wRAA(x2b1s2022, x2b1s2021, x2b1s2019) - wRAA(x2b0s2022, x2b0s2021, x2b0s2019), wRAA(x2b2s2022, x2b2s2021, x2b2s2019) - wRAA(x2b1s2022, x2b1s2021, x2b1s2019), KwRAA - wRAA(x2b2s2022, x2b2s2021, x2b2s2019), wRAA(x3b1s2022, x3b1s2021, x3b1s2019) - wRAA(x3b0s2022, x3b0s2021, x3b0s2019), wRAA(x3b2s2022, x3b2s2021, x3b2s2019) - wRAA(x3b1s2022, x3b1s2021, x3b1s2019), KwRAA - wRAA(x3b2s2022, x3b2s2021, x3b2s2019)) ,
#                   'Run Value of Ball' = c(wRAA(x1b0s2022, x1b0s2021, x1b0s2019) - wRAA(x0b0s2022, x0b0s2021, x0b0s2019), wRAA(x1b1s2022, x1b1s2021, x1b1s2019) - wRAA(x0b1s2022, x0b1s2021, x0b1s2019), wRAA(x1b2s2022, x1b2s2021, x1b2s2019) - wRAA(x0b2s2022, x0b2s2021, x0b2s2019), wRAA(x2b0s2022, x2b0s2021, x2b0s2019) - wRAA(x1b0s2022, x1b0s2021, x1b0s2019), wRAA(x2b1s2022, x2b1s2021, x2b1s2019) - wRAA(x1b1s2022, x1b1s2021, x1b1s2019), wRAA(x2b2s2022, x2b2s2021, x2b2s2019) - wRAA(x1b2s2022, x1b2s2021, x1b2s2019), wRAA(x3b0s2022, x3b0s2021, x3b0s2019) - wRAA(x2b0s2022, x2b0s2021, x2b0s2019), wRAA(x3b1s2022, x3b1s2021, x3b1s2019) - wRAA(x2b1s2022, x2b1s2021, x2b1s2019), wRAA(x3b2s2022, x3b2s2021, x3b2s2019) - wRAA(x2b2s2022, x2b2s2021, x2b2s2019),  BBwRAA - wRAA(x3b0s2022, x3b0s2021, x3b0s2019), BBwRAA - wRAA(x3b1s2022, x3b1s2021, x3b1s2019), BBwRAA - wRAA(x3b2s2022, x3b2s2021, x3b2s2019))
# )
# 
# write.csv(df, file = 'C:\\Users\\brkea\\OneDrive\\Baseball Projects\\Run Value by Count.csv')

df <- read.csv('C:\\Users\\brkea\\OneDrive\\Baseball Projects\\Run Value by Count.csv')
print(df)


#wOBA and OPS of 3-0 
wOBA(x3b0s2022, x3b0s2021, x3b0s2019)
print((ops(x3b0s2022) + ops(x3b0s2021) + ops(x3b0s2019))/3)


#wOBA, wRAA, and OPS in 3-0 counts swinging
swing302019 <- x3b0s2019
swing302019 <- swing302019[(swing302019$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
swing302021 <- x3b0s2021
swing302021 <- swing302021[(swing302021$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
swing302022 <- x3b0s2022
swing302022 <- swing302022[(swing302022$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
wOBA(swing302022, swing302021, swing302019)     #the wOBA of swinging in a 3-0 count is about the same as the start wOBA for a 3-1 count. Which means your basically giving yourself the same amount of success as an extra strike
wRAA(swing302022, swing302021, swing302019)

print((ops(swing302019) + ops(swing302021) + ops(swing302019))/3)


#wOBA, wRAA, and OPS in 3-0 counts taking
take302019 <- x3b0s2019
take302019 <- take302019[!(take302019$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
take302021 <- x3b0s2021
take302021 <- take302021[!(take302021$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
take302022 <- x3b0s2022
take302022 <- take302022[!(take302022$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
wOBA(take302022, take302021, take302019)
wRAA(take302022, take302021, take302019)

print((ops(take302019) + ops(take302021) + ops(take302019))/3)


data <- rbind(x2019, x2021, x2022)
x3b0s <- data %>% filter(balls == 3, strikes == 0)


#percentage of fastballs vs non-fastball balls in 3-0 count
fastball <- 0
breaking <- 0
for(pitch in x3b0s[,'pitch_type']){
  if(pitch == 'FF'){
    fastball <- fastball + 1
  }
  else{
    breaking <- breaking + 1  
  }
}

percentFF <- (fastball/length(x3b0s[,'pitch_type']))*100
percentBB <- (breaking/length(x3b0s[,'pitch_type']))*100

print(percentFF)
print(percentBB)



#percentage of walks on the 3-0 pitch
walk <- 0
for(pitch in x3b0s[,'events']){
  if(pitch == 'walk'){
    walk <- walk + 1
  }
}

percentwalk <- (walk/length(x3b0s[,'events']))*100
print(percentwalk)



take30 <- x3b0s[!(x3b0s$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]


#percentage of times when 3-0 count becomes 3-1 when not swinging 
#same as percentage above but only taking non swings into account
strike <- 0
for(pitch in take30[,'description']){
  if(pitch == 'called_strike'){
    strike <- strike + 1
  }
}

percentstrike <- (strike/length(take30[,'description']))*100
print(percentstrike)




#wOBA of swinging in a 3-1 count 
swing312019 <- x3b1s2019
swing312019 <- swing312019[(swing312019$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
swing312021 <- x3b1s2021
swing312021 <- swing312021[(swing312021$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
swing312022 <- x3b1s2022
swing312022 <- swing312022[(swing312022$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
wOBA(swing312022, swing312021, swing312019) 





#break down by pitcher type 
#4 seam fastball working mostly in the top of zone, slider, curveball, change 
#Justin verlander, Dylan Cease, Gerrit Cole, Hunter Brown, Tyler Glasnow, Logan Gilbert
#434378, 656302, 543037, 686613, 607192, 669302
#fourseam <- data[(data$pitcher %in% c('434378', '656302', '543037', '686613', '607192', '669302')),]

#wOBA and wRAA in 3-0 counts swining
fourseam2019 <- x3b0s2019[(x3b0s2019$pitcher %in% c('434378', '656302', '543037', '686613', '607192', '669302')),]
fourseam2019 <- fourseam2019[(fourseam2019$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
fourseam2021 <- x3b0s2021[(x3b0s2021$pitcher %in% c('434378', '656302', '543037', '686613', '607192', '669302')),]
fourseam2021 <- fourseam2021[(fourseam2021$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
fourseam2022 <- x3b0s2022[(x3b0s2022$pitcher %in% c('434378', '656302', '543037', '686613', '607192', '669302')),]
fourseam2022 <- fourseam2022[(fourseam2022$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
wOBA(fourseam2022, fourseam2021, fourseam2019)     
wRAA(fourseam2022, fourseam2021, fourseam2019)

#wOBA and wRAA in 3-0 counts taking
fourseamtake2019 <- x3b0s2019[(x3b0s2019$pitcher %in% c('434378', '656302', '543037', '686613', '607192', '669302')),]
fourseamtake2019 <- fourseamtake2019[!(fourseamtake2019$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
fourseamtake2021 <- x3b0s2021[(x3b0s2021$pitcher %in% c('434378', '656302', '543037', '686613', '607192', '669302')),]
fourseamtake2021 <- fourseamtake2021[!(fourseamtake2021$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
fourseamtake2022 <- x3b0s2022[(x3b0s2022$pitcher %in% c('434378', '656302', '543037', '686613', '607192', '669302')),]
fourseamtake2022 <- fourseamtake2022[!(fourseamtake2022$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
wOBA(fourseamtake2022, fourseamtake2021, fourseamtake2019)     
wRAA(fourseamtake2022, fourseamtake2021, fourseamtake2019)

#mostly sinker ball guys
#logan Webb, Sandy Alcantra, Marcus Stroman, Ranger Squarez, Adrian Houser, Zach Efflin
#657277, 645261, 573186, 624133, 605288, 621107
#sinker <- data[(data$pitcher %in% c('657277', '645261', '573186', '624133', '605288', '621107')),]

#wOBA and wRAA in 3-0 counts swining
fourseam20191 <- x3b0s2019[(x3b0s2019$pitcher %in% c('657277', '645261', '573186', '624133', '605288', '621107')),]
fourseam20191 <- fourseam20191[(fourseam20191$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
fourseam20212 <- x3b0s2021[(x3b0s2021$pitcher %in% c('657277', '645261', '573186', '624133', '605288', '621107')),]
fourseam20212 <- fourseam20212[(fourseam20212$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
fourseam20223 <- x3b0s2022[(x3b0s2022$pitcher %in% c('657277', '645261', '573186', '624133', '605288', '621107')),]
fourseam20223 <- fourseam20223[(fourseam20223$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
wOBA(fourseam20223, fourseam20212, fourseam20191)     
wRAA(fourseam20223, fourseam20212, fourseam20191)

#wOBA and wRAA in 3-0 counts taking
fourseamtake20191 <- x3b0s2019[(x3b0s2019$pitcher %in% c('657277', '645261', '573186', '624133', '605288', '621107')),]
fourseamtake20191 <- fourseamtake20191[!(fourseamtake20191$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
fourseamtake20212 <- x3b0s2021[(x3b0s2021$pitcher %in% c('657277', '645261', '573186', '624133', '605288', '621107')),]
fourseamtake20212 <- fourseamtake20212[!(fourseamtake20212$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
fourseamtake20223 <- x3b0s2022[(x3b0s2022$pitcher %in% c('657277', '645261', '573186', '624133', '605288', '621107')),]
fourseamtake20223 <- fourseamtake20223[!(fourseamtake20223$description %in% c('foul', 'hit_into_play', 'swinging_strike')),]
wOBA(fourseamtake20223, fourseamtake20212, fourseamtake20191)     
wRAA(fourseamtake20223, fourseamtake20212, fourseamtake20191)
