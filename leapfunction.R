# This script writes the leap function

#if (year is not divisible by 4) then (it is a common year)
#else if (year is not divisible by 100) then (it is a leap year)
#else if (year is not divisible by 400) then (it is a common year)
#else (it is a leap year)

source("wholenumber.R")

is.leap <- function(year) {
   if(year <= 1582) {
    outrange <- sprintf("%s is out of the valid range", year)
    return(outrange)
   }
    else {
      if(!is.numeric(year)) { 
	stop("x must be of class numeric")
   }
	else 
   {
	  if(!is.wholenumber(year/4)) {
	    leapyear <- 0 }
	    else {	    
	      if (!is.wholenumber(year/100)) {
		leapyear <- year }
		else {
		  if(!is.wholenumber(year/400)) { 
		    leapyear <- 0 }
		    else {
		      leapyear <- year }}}}}
		       
   return(leapyear == year)
}
  

