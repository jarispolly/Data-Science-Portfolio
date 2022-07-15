#tasked with measuring the size of manufactured ice spheres
#you weigh each sphere
#d is the sphere's diameter, and w is the sphere's weight.
#they gave you the following formula to convert the ice sphere's weight in grams to its diameter in inches
#d=2/2.54(w/0.92*4/3*pi)1/3
#Create a function called diam() that computes the diameter
#Create a for loop 
#weights in grams: 0.96, 1.51, 2.17, 3.85, 4.45, and 6.02.
 
diam <- function(w){
  (2/2.54)*((w/(0.92*(4/3)*pi))^(1/3))
}
weights <- c(0.96, 1.51, 2.17, 3.85, 4.45, 6.02)

for (w in weights) {
  d = diam(w)
  cat (w, "grams = " , d, "inches\n")
}
