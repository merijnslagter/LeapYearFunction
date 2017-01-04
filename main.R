#This is the central script

#load other files
source("leapfunction.R")


is.leap(2000)
#[1] TRUE

is.leap(1581)
#[1] "1581 is out of the valid range"

is.leap(2002)
#[1] FALSE

is.leap('john') #should return an error 
#Error: argument of class numeric expected