#Author: The_Leopards (Samantha Krawczyk, Georgios Anastasiou)
#7th January 2016

#This function was created to determine whether a year is a leap year.

print ("Is the following year a leap year?")
is.leap <- function(x) {
		# check whether "x" is a number
	if(!is.numeric(x)) {
		stop("argument of class numeric expected", call.=FALSE)
	} 
		# check whether "x"is an integer
		else if (x %%1 != 0) {
			stop (" is not an integer", call.=FALSE)
	} 
		# check whether "x" is a year after the introduction
		# of the Gregorian calendar	
		else if (x <= 1582) {
			stop (" is out of the valid range")	
	} 
		# check whether "x" is a leap year
		else if (x %% 4 != 0) {
			common <- x %% 4 == 0
			return (common)
	} else if (x %% 100 != 0) {
			leap <- x%%100 != 0
			return(leap)
	} else if (x %% 400 != 0) {
			common2 <- x %% 400 == 0
			return (common2)
	} 
	return(TRUE)
}

is.leap(2000)
