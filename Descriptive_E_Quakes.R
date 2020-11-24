#airquality = read.csv('path/quakes.csv',header=TRUE, sep=",")
e_quakes<-datasets::quakes
####Top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)
######Columns
e_quakes[,c(1,2)]
df<-e_quakes[,-5]
summary(e_quakes[,1])
###########Summary of the data#########
summary(e_quakes$lat)
summary(e_quakes$long)
summary(e_quakes$depth)
summary(e_quakes$mag) 
summary(e_quakes) 
###########Plot##########
plot(e_quakes$depth)
plot(e_quakes$mag,e_quakes$depth,type="p")
# plot(e_quakes)
# points and lines 
plot(e_quakes$depth, type= "l") # p: points, l: lines,b: both
plot(e_quakes$depth, xlab = 'Depth of Earth Quakes', 
     ylab = 'No of Instances', main = 'Earth Quakes',
     col = 'blue')
# Horizontal bar plot
barplot(e_quakes$lat, main = 'Latitude',
        ylab = 'Latitude levels', col= 'blue',horiz = F,axes=T)
#Histogram
hist(e_quakes$mag)
hist(e_quakes$long, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(e_quakes$depth,main="Boxplot")
boxplot(e_quakes$lat,main="Boxplot")
boxplot(e_quakes$long,main="Boxplot")
boxplot(e_quakes$mag,main="Boxplot")

# Multiple box plots
boxplot(e_quakes[,1:5],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(e_quakes$lat)
plot(e_quakes$lat, e_quakes$long)
plot(e_quakes$lat, type= "l")
plot(e_quakes$long, type= "l")
plot(e_quakes$depth, type= "l")
plot(e_quakes$mag, type= "l")
barplot(e_quakes$lat, main = 'Latitude',
        xlab = 'Latitude levels', col='green',horiz = TRUE)

# Histogram for lat, long, depth and mag
hist(e_quakes$lat)
hist(e_quakes$long)
hist(e_quakes$depth)
hist(e_quakes$mag)

# Single boxplot for long, lat, depth and mag
boxplot(e_quakes$long)
boxplot(e_quakes$lat)
boxplot(e_quakes$depth)
boxplot(e_quakes$mag)

# Multiple boxplot
boxplot(e_quakes[,0:4], main='Multiple Box plots')


# standard deviation for lat, long, depth and mag
sd(e_quakes$lat,na.rm = T)
sd(e_quakes$long,na.rm = T)
sd(e_quakes$depth,na.rm = T)
sd(e_quakes$mag,na.rm = T)

# Variance for lat, long, depth and mag
var(e_quakes$lat,na.rm = T)
var(e_quakes$long,na.rm = T)
var(e_quakes$depth,na.rm = T)
var(e_quakes$mag,na.rm = T)

# Skewness for lat, long, depth and mag
skewness(e_quakes$lat,na.rm = T)
skewness(e_quakes$long,na.rm = T)
skewness(e_quakes$depth,na.rm = T)
skewness(e_quakes$mag,na.rm = T)

# Kurtosis for lat, long, depth and mag
kurtosis(e_quakes$lat,na.rm = T)
kurtosis(e_quakes$long,na.rm = T)
kurtosis(e_quakes$depth,na.rm = T)
kurtosis(e_quakes$mag,na.rm = T)
