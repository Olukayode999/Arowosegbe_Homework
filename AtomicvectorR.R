########################
#Atomic vector part II

z<- vector(mode= "numeric", length = 0)
print(z)

z<- c(z, 5)
print(z)

#predefined length
z <- rep (0, 100)
length(z)

z<- rep (NA, 100)



typeof(z)

z[1] <- "Vermont"


head(z)


typeof(z)


my_vector <- runif (100)

my_names <- paste("species", seq(1:length(my_vector)), seq= "")
print(my_names)

names(my_vector)<- my_names
head(my_vector)
str(my_vector)

#using the rep function
rep(0.5, 6)
rep(x = 0.5, times = 6)

my_vec <- c (1, 2,3)

# repeat a vector
rep(x=my_vec, times = 2, each =2)

#sequencing vectors
seq( from = 2, to =4)
2:4 #shorthand

x <- seq(from =2, to=4, length=7) #evenly space with a final length

my_vec <- 1 : length(x) #common in oth languages
my_vec # slow!

#better in R
seq_along(my_vec)
#generating random vectors
runif(5) # gives us 5 values 0 to 1
# the params
runif(n=3, min =100, max=101)

set.seed(123) # takes any number
#gives you the same progression of random nums
runif(n=1, min=0, max=1)


# normal dists
out <- rnorm(n= 500, mean =100, sd =30)
hist(out)

#random sampling

long_vec <- seq_len(10)
sample(x=long_vec)
sample(x = long_vec, size = 10, replace = F)

#weighted smapling from a vec
weights <- c(rep(20,5), rep(100,5))
sample(x=long_vec, replace =TRUE, prob =weights)

#subsetting vectors
z <- c(3.1, 9.2, 1.3, 0.4, 7.5)
print(z)

z[-c(2,3)] #using vecs slice
# using logicals
z [z>3]
 z>3

# logical operators
# ! not
# & and (vector)
# | or (vector)
# xor(x,y)

X <- 1 :5
y <- c(1:3,7, 7)
x == 2 # equals
x != 2  #not equal

x ==5 & y ==7 # using and

x == 1 | y --7 # using or
x ==3 & y ==3 # and vs or
xor(x ==3, y ==5)


#missing values
set.seed (90)
z <- runif(10)
z <- 0.5
z[z < 0.5]
z[which (z < 0.5)]
zd <- c(z, NA, NA)
zd[zd < 0.5]
#dropping NAs with which to index
zd[which(zd < 0.5)]
which (zd < 0.5)
zd[11]

