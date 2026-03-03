 
#start

library(tidyverse)

#specify the package
dplyr::filter()
stats::filter()

data(starwars)
class(starwars)


#cleaning up our dataset

#BAse r has the complete.cases function- this is foing to remove rows with NA's


starwarsClean <- starwars[complete.cases(starwars[,1:10]),]

#filter() function- this will subset observations by their values
#uses >, >=, <=, ==, !

filter(starwarsClean, gender =="masculine" & height < 100)

#filter(starwars, eye_color %in%)
#arrange() reorder rows

arrange(starwarsClean, by =height)
arrange(starwarsClean, by=desc(height)) #desc
arrange(starwarsClean, by=desc(mass)) #desc


#select() choose variables based on their names/columns

select(starwarsClean, contains("color"))

#rename columns
rename(starwars, haircolor = hair_color)

#mutate ()function create new variables with functions of exiting variables

#create a new column that's just the height divided by mass
mutate(starwarsClean, ratio = height/mass) # note we use arithmetic operators 

summarize(starwarsClean, meanHeight =mean(height))
summarize(starwars,meanHeight =mean(height))
summarize(starwars, mmeanHeight=mean(height, na.rm=TRUE), TotalNumber =n())

#use group_by() for additional calculations
starwarsGender <- group_by(starwars, gender)
summarize(starwarsGender, meanHeight =mean(height, na.rm=TRUE), number =n())


#pipe statements -the pipe operator is %>% or |>

#These are sequences of actions that will change your dataset
#It's going to pass intermediate results onto the next functioins in sequence
#formatting: you should always have

starwarsClean%>%
  group_by(gender)%>%
  summarize(meanHeight=mean(height, na.rm =TRUE), number= n())

#case_when() function is useful for multiple conditional ifelse statements


starwarsClean%>%
  mutate(sp=case_when(species=="Human"~"Human", TRUE ~ "Non-human"))%>%
  select(name, sp, everything())
unique(starwarsClean$species)
glimpse(starwarsClean)

#pivot from long to wide format using pivot_wider or pivot_longer

wideSW <- starwarsClean%>%
select(name,sex,height)%>%
  pivot_wider(names_from=sex, values_fill=NA)

wideSW

pivotSW <- starwars%>%
select(name, homeworld)%>%
  group_by(homeworld)%>%
  mutate(rn=row_number())%>%
  ungroup()%>%
  pivot_wider(names_fro, = homeworld, values)

wideSW%>%
  pivot_longer(cols=male:female, names_to="sex, values")


#Basics of SQL
library(tidyverse)
library(sqldf)
install.packages("sqldf")
library(sqldf)

#Read in the dataset
species_clean <- read.csv("site_by_species.csv")
var_clean <- read.csv("site_by_variables.csv")

getwd()
head(species_clean)

head(var_clean)


query="
SELECT Site, Sp1, Sp2, Sp3 
FROM species
WHERE Site <'30'
"
sqldf(query)

library(sqldf)
species<-filter(species_clean, Site<30)
variable_clean<-filter(var_clean, Site<30)
sqldf("species_clean")

library(sqldf)

query <- "SELECT * FROM species WHERE Site > 6"

sqldf(query)
query="
SELECT Site, Sp1, Sp2, Sp3 
FROM species
WHERE Site<'30'
"
sqldf(query)

query ="
SELECT *
FROM species
"
a=sqldf(query) # save results to data frame

sqldf(query) # dump to console

#SQL method-
# query entire table
query ="
SELECT *
FROM species
"
a=sqldf(query) # save results to data frame

sqldf(query) # dump to console

query ="
SELECT Site, Sp1, Sp2, Sp3
FROM species
"
sqldf(query)

# reorder columns
query ="
SELECT Sp1, Sp2, Sp3, Site
FROM species
"
sqldf(query)

species<-rename(species, Long=Longitude.x., Lat=Latitude.y.)

num_species<-species%>%
  mutate(letters=rep(letters, length.out=length(species$Site)))
num_species<-select(num_species, Site, Long, Lat, Sp1,letters)
num_species_edit<-select(num_species, where(is.numeric))
#query <-  ""

#Pull out all of the the numeric column
num_species <- species%>%
  mutate(letters =rep(letters, Length.out=length(species$Site)))

  
  num_species <- select(num_species, site, Long, Lat, Sp1, letters)

num_species_edit <-  select(num_species, where(is. numeric))



#Pivot longer to lenghten the dataset, decreasing the number of columns and increasing rhe number of rows. You may also see the gather ()/ spread, but that is an outdated function
species_long <-  pivot_longer(edit_species, cols=c(Sp1, Sp2, Sp3), maes_to= "ID")

species_wider <-  pivot_wider(species_long, names_form =ID)


# edit_species <- 

#SQL
  
  