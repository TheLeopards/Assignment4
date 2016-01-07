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
		stop ("argument is not an integer", call.=FALSE)
	} 
	# check whether "x" is a year after the introduction
	# of the Gregorian calendar	
	else if (x <= 1582) {
		stop ("argument is out of the valid range", call.=FALSE)	
	} 
	# check whether "x" is a leap year
	else if (x %% 4 != 0) {
		stop ("False")
	} else if (x %% 100 != 0) {
		stop("true")
	} else if (x %% 400 != 0) {
		stop ("false2")
	} 
	return("TRUE")
}

is.leap(2004)
