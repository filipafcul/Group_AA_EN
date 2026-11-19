#Don't forget to import the data!
#For some reason some of the columns didn't changed from character to numeric, so 1st of all lets change that:
data$viblow<-as.numeric(data$viblow)
data$vibhigh<-as.numeric(data$vibhigh)
data$touch<-as.numeric(data$touch)


#Check if everything is the right type of class
str(data)

#Plot ID vs Heights
plot(data$ID,data$height, main="ID vs Heights", xlab="ID pillbugs", ylab="Heights (cm)")

#Plot Height vs Fall Time
plot(data$height,data$fall, main = "Height vs Fall Time", xlab="Heights", ylab="Fall time")

#boxplot to compare Time after fall for bugs with and without light
boxplot(data$fall~data$light, xlab="Presence of Light", ylab="Time (sec)", ylim=c(0,140))


boxplot(data$height~data$light, xlab="Presence of Light", ylab="Height (cm)", ylim=c(0,140))
#this plot just show us that we used the same height for each group of 15 bugs (15 with light and 15 without)

#boxplot to compare the 3 tests of vibration
boxplot(data[,c("vib0", "viblow", "vibhigh")], ylab="Time (sec)", xlab="Vibrations")

#boxplot for the thouch test
boxplot(data$touch~data$light, xlab="Presence of Light", ylab="Recovering time after touch (sec)", ylim=c(0,140))
