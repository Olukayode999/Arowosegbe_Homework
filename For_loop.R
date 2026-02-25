

#tip 1:
# dont do things in a loop if you don't need to:

#for (i in seq_along(my_dogs)){
  ## my_dogs[i] <- toupper(my_dogs[i])



# %%
##################################################
# FUNCTION: log_growth 
# Purpose: Creating a logistic growth model that returns a dataframe with columns for population size and time.
# Inputs: N0 = initial population size
# r = intrinsic growth rate 
# K = carrying capacity
# tfinal = ending time for simulation
# tstep  = time step increment
# Output: A dataframe with any time between 1:20 with intervals of 1
# Nt = population size at each time

##################################################

log_growth <- function(N0=100, r=0.3, K=150, tfinal=20, tstep=1) {
# time vector 
time <- seq(from=0, to=tfinal, by=tstep)
  
# logistic growth equation
Nt <- K / (1 + ((K - N0) / N0) * exp(-r * time))
  
# dataframe for plotting
df_log_growth <- data.frame(time=time, Nt=Nt)
  
return(df_log_growth)

}
log_growth()



##################
log_growth <- function(N0 = 100, r = 0.1,tfinal = 20, K = 100, tstep = 5) {    
#times: sequences from 0 to tfinal by tstep
times <- seq (from=0, to=tfinal, by=tstep)
#logdf:creates a df with column time(times) and population size
logdf <- data.frame(times, populationsize = NA)
# For loop: Finds the length of times, then for every integer, finds t at location i of log_df.
for ( times in 1:length(times)){
    times <- logdf$times[t]
n <- (K)/ (1+ ((K - N0)/ N0) * exp(( -r) * times))

logdf$populationsize[t] <- n
}
return(logdf)

logdf_real <-  log_growth()
}


```