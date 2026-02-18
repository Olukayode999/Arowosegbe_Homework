
my_funct()

my_func <- function(a =3, b =4){
  return(z)
}


my_funct()

my_funct <-  function(a =3){
  b <- 8
  z <- a + b
  return(z)
}
my_bad_func()

#passing global variables properly

a <- 32
b <- 4

my_func_2 <-  function(first, second){
  z <-  first + second
  return(z)
}

my_func_2(first = 8, second = b)

####################################################
# start Function


hardy_weinberg <-  function(p = runif(1)){
  
  if (p 
  stop ("Function failure p must be greater than 0 but less than"))
  fAA <-  p^2

}

#regression function

fit_linear <-  function(x = runif(20), y = runif(20)){
  
  ####################################
# FUNCTION: fit_linear
# PURPOSE: fits a simple linear regression
# INPUTS: numeric vector or predictors x and response y
# OUT: slope and p value
  my_mod <- lm(y~x)
  my_out <-  c(slope = summary(my_mod)$coefficients[2,1],
  p_value =summary(my_mod)$coefficents[2,4])

  #plot the output
  plot(x=x, y=y)
  return(my_out)

  #########################################################
  # END OF FUNCTION
  var1 <-  1:20
  var2 <-  21:40
  fit_linear(var1, var2)
  
  
}


fit_linear <-  function(p = null){
  
    ####################################
# FUNCTION: fit_linear
# PURPOSE: fits a simple linear regression
# INPUTS: numeric vector or predictors x and response y
# OUT: slope and p value
  if(is.null(p)){
    p <- list(x=runif(20), y = runif(20))

  }
  my_mod <-  c (slope =summary(my_mod)$coefficient[2,1],
                p_value = summary(my_mod)$coefficients[2,4])
  plot(x=p$x, y =p$y) #quick and dirty plot to check output
  return(my_out)

}

fit_linear()
my_parms <-  list(x= 100, y = sort(10))

fit_linear(p = my_parms)

#basic coding with for loops

# 10 february 2026

#creating a basic for loop:

for(1 in 1:5){
  cat("stuck in a loop", "\n")
  cat(3 + 2, "\n")
  cat (runif(1), "\n")

}

my_dogs <-  c("chow", "akita", "malamute", "husky", "samoyed")
for( i in 1:length(my_dogs)){
  cat("i =", i, "my_dogs[i} =", my_dogs[i], "\n")
}

my_bad_dogs <-  NULL
for (i in 1:length(my_bad_dogs)){
  cat("i =", "my_bad_dogs[i] =", my_dogs[i], "\n")
  
}

#tip 1:
# dont do things in a loop if you don't need to:

for (i in seq_along(my_dogs)){
   my_dogs[i] <- toupper(my_dogs[i])
}

#tip 2:
# Don't change dimensions in the loop
my_dat <-  runif(1)
for (i in 2:10){
  temp <-  runif(1)
  my_dat <-  c(my_dat, temp)
  cat("loop number =", i, my_dat[i], "\n")
  print(my_dat)
}


#tip 3:
# don't write a loop if you can vecorize it
my_dat <- 1:10
for (i in seq_along(my_dat)){
  my_dat[i] <- my_dat + my_dat[i] ^ 2
  cat("loop number =", i, "vector element =", my_dat[i], "\n")
  print(my_dat)
}
#Do this
z <- 1:10
z <-  z+ z^2

#Tip 4
#remember the difference and i and z[i]

z <- c(10,2,4)
for (i in seq_along(z)) {
  cat("i =", i, "z[i =", z[i], "\n")

}
#tip number 5:
# don't have to loop through everything

z <-  1:20

for (i in seq_along(z)){
  if(i %% 2 == 0) next
  print(i)
}

###

# Logistic Growth and Functions
# Solution to homework 5
# P. Alexander Burnham
# 4 February 2026


# Begin Creating Functions Here
#----------------------------------------------------#



# LOGISTIC GROWTH FUNCTION
######################################################
# Function Name: logistic_growth
#
# Purpose:
#   Simulates continuous-time logistic population growth using the
#   closed-form solution to the logistic differential equation.
#   Returns a tidy dataframe suitable for plotting or further analysis.
#
# Inputs:
#   N0 (numeric)  : Initial population size at time t = 0
#   r  (numeric)  : Intrinsic growth rate
#   K  (numeric)  : Carrying capacity
#   t_max (numeric) : Maximum simulation time
#   dt (numeric)  : Time step used to generate the time vector
#
# Output:
#   data.frame containing:
#     time (numeric)        : Time values from 0 to t_max
#     population (numeric)  : Population size N(t) at each time
#     N0 (numeric)          : Initial population parameter used
#     r (numeric)           : Growth rate parameter used
#     K (numeric)           : Carrying capacity parameter used
######################################################
#logistic_growth <- function(
  N0 = 10,
  r  = 0.3,
  K  = 100,
  t_max = 50,
  dt = 0.1
)
{
  
  # time vector
  time <- seq(0, t_max, by = dt)
  
  # logistic equation (closed-form solution)
  N <- K / (1 + ((K - N0) / N0) * exp(-r * time))
  
  # return tidy dataframe
  data.frame(
    time = time,
    population = N,
    N0 = N0,
    r = r,
    K = K
  )
}
######################################################
# END FUNCTION



# PLOTTING FUNCTION
######################################################
# Function Name: growth_plotter
#
# Purpose:
#   Creates a ggplot visualization of population growth over time
#   using the dataframe produced by logistic_growth().
#
# Inputs:
#   data (data.frame) :
#     Must contain columns named:
#       time (numeric)
#       population (numeric)
#
# Output:
#   ggplot object showing population vs time.
#   The plot is printed to the plotting window.
######################################################
growth_plotter <- function(data){

  library(ggplot2)
  
  ggplot(data, aes(x = time, y = population)) +
    geom_line(size = 1.2) +
    labs(
      title = "Logistic Growth Model",
      x = "Time",
      y = "Population Size"
    ) +
    theme_minimal(base_size = 17)
}
######################################################




# Driver Section of Script
#----------------------------------------------------#

# run the model with required parms
df <- logistic_growth(
  N0 = 5,
  r  = 0.25,
  K  = 200,
  t_max = 60
)

# plot the output df
growth_plotter(data = df)
###############################################
# look at the paramenter space og the logistic growth model with a for loop

r_vec <- seq(0, 1, by = .05)# vector of little rs
container_vec <- rep(NA, length(r_vec)) # storage for max(n)
for (i in seq_along(r_vec)){
  temp_df <- logistic_growth(r =r_vec[i])
  max_n <-  max(temp_df$population)
  container_vec[i] <-  max_n #storage is happening here
}
 growthDF <- data.frame(r - r _vec, N = container_vec)
head(growthDF)
plot(x = growthDF$r, y = growthDF$N)


  print(max_n)
}


#####################################################
 # 02/17/2026
# #create a random walk function
###################################
#NAME: ran_walk
# purpose: conducts a random walk
# input:times = number if time steps
#      n1 = initial pop size
#      lamda = finite rarte of increase
#      noise_sd = 10
# output:
#        vector n with population size > 0 until extinct.
library(ggplot2)

ran_walk <- function(times = 100, n1= 50, landa =1, noise_sd = 10){
  n <-  rep(NA, times) #create our output vec
  n[1] <- n1 # initialize init pop size
  noise <-  rnorm(n= 100, mean = 0, sd = noise_sd) #created noise/erro
  for(i in 1:(times-1)){
    n[i +1] <- lamda *n[1] + noise[i]
    if (n[i +1] <= 0){
      n[i +1] <= NA
      cat("Population extinction at time", i +1, "\n")
      break
    }
  }
  return(n)
}

x  <- ran_walk()
print(x)

#plottting with default values
qplot(x=1:100, y = ran_walk(), geom = "line")

#no noise/not so random walk
qplot(x =1:100, y =ran_walk(noise_sd=0), geom = "line")

#no noise and adjust lamda
qplot(x = 1:100, y = ran_walk(landa = 0.92, noise_sd= 0), geom ="line")

#add some stoch. make lamda > 1
qplot(x = 1:100, y = ran_walk(landa = 1.11, noise_sd= 0), geom ="line")



######################################################################
# vectors  for r and k parameters
r_values <-  seq(0,1 length.out = 100)
k_values <-  seq(1-, 1000, lenth.out = 100)

# create storage matrix for outputs
stor_mat <-  matrix(NA, nrow = length(rvec), ncol = length(kvec))
  for(i in seq_along(rvec){ #rows
    for j in seq_along

  })

growth_sweep <-  function(rvec, kvec){
  #create storage matrix for outputs



}
# run log growth
for (i in seq_along(r_values)){
   for (j in seq_along(k_value[j]))
    #store max n in 2d matrix
 growth_mat[i,j] <- growth_sweep(rvec = r_values, kvec = l_values)
  
  growth_mat

  tem 
}