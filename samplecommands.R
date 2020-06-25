install.packages("readxl")
install.packages("dplyr")
library(readxl)
library(dplyr)

#setwd("/Users/sruthiduvvuri/Desktop/DS_R")
#getwd()
#BankCustomer <- read_excel("Demo.xlsx");

#setwd(choose.dir())
setwd("/Users/sruthiduvvuri/Desktop/DS_R")
getwd()
CustomerComplaints <- read.csv(file = 'Comcast Telecom Complaints data.csv', stringsAsFactors = FALSE)

View(CustomerComplaints)
str(CustomerComplaints)

# selecting from customercomplaints dataframe, the date column
select (CustomerComplaints,Date)


select(CustomerComplaints,starts_with("Filing"))
#selecting from customercomplaints dataframe, the column that contains the date
select(CustomerComplaints,contains("Date"))

#Filter functions
#this function enables easy filtering, zoom in and zoom out of relevant data
#2 types of filters are explained below
#simple filter
filter(CustomerComplaints,State=="California")
#Multiple Criteria Filter
filter(CustomerComplaints,State=="California" & City=="Alameda")

#Arrange functions
arrange(CustomerComplaints,desc(Ticket..))
arrange(CustomerComplaints,Ticket..,State)


