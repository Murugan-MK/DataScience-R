#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
#airquality <- datasets::airquality
####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
######Columns
airquality[,c(1,2)]
df<-airquality[,-6]
summary(airquality[,1])
###########Summary of the data#########
summary(airquality$Ozone)
summary(airquality$Solar.R)
summary(airquality$Wind)
summary(airquality$Temp)
summary(airquality) 
#####################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
# plot(airquality)
# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both
plot(airquality$Wind, xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')
# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = F,axes=T)
#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Wind,main="Boxplot")
# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

# standard deviation for Ozone, Solar.R, Wind and Temp
sd(airquality$Ozone,na.rm = T)
sd(airquality$Solar.R,na.rm = T)
sd(airquality$Wind,na.rm = T)
sd(airquality$Temp,na.rm = T)

# Variance for Ozone, Solar.R, Wind and Temp
var(airquality$Ozone,na.rm = T)
var(airquality$Solar.R,na.rm = T)
var(airquality$Wind,na.rm = T)
var(airquality$Temp,na.rm = T)

# Skewness for Ozone, Solar.R, Wind and Temp
skewness(airquality$Ozone,na.rm = T)
skewness(airquality$Solar.R,na.rm = T)
skewness(airquality$Wind,na.rm = T)
skewness(airquality$Temp,na.rm = T)

# Kurtosis for Ozone, Solar.R, Wind and Temp
kurtosis(airquality$Ozone,na.rm = T)
kurtosis(airquality$Solar.R,na.rm = T)
kurtosis(airquality$Wind,na.rm = T)
kurtosis(airquality$Temp,na.rm = T)


##Home work
e_quakes<-datasets::quakes







