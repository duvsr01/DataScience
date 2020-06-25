library(lubridate)
require(lubridate)
setwd("/Users/sruthiduvvuri/Desktop/DS_R");
getwd();

cust_complaints$Date<-as.factor(cust_complaints$Date)
abis<-strptime(cust_complaints$Date,format="%d/%m/%Y") #defining what is the original format of your date
b<-as.Date(abis,format="%Y-%m-%d")


cust_complaints <- read.csv(file = 'Comcast Telecom Complaints data.csv',stringsAsFactors = FALSE)
#cust_complaints

cust_complaints$Date <- as.Date(cust_complaints$Date,"%d/%m/%y")

str(cust_complaints)
head(cust_complaints);

#data <- data.frame(cust_complaints = c("22-04-2015","22/04/2015"))
#parse_date_time(data$cust_complaints, orders = c('mdy', 'dmy'))


cust_complaints$Date <- format(as.Date(cust_complaints$Date, format="%d/%m/%Y"), "%d/%m/%y")
str(cust_complaints)
head(cust_complaints);

cust_complaints$Date <- as.Date(cust_complaints$Date,"%d/%m/%y")



#cust_complaints$Date<-format(as.Date(cust_complaints$Date,"%d-%m-%Y"), "%d-%m-%Y")




cust_complaints$Date <- as.Date(cust_complaints$Date, format = "%m/%d/%y")
cust_complaints
# Print the summary.
#print(summary(cust_complaints))

#print(cust_complaints,row.names = TRUE,max = 5);

dates <- as.Date(cust_complaints.Date, "%m/%d/%Y")