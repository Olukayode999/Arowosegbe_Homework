# ANanomy
# object = function(data= ds, method ="means", num= 10)

#object.python_method(method ="mean", num =10)

#intro to python
#March 17, 2025
# installing libraries:

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
#np.mean()
#object, methods and functions:
###################################
print("I love Python") #character string
greeting = "Hello"
print(greeting)
 # numeric variable
 scaler = 6 # integer value
out = scaler * 3 # doing math with an object
print(out)

myList = [34, 7, 98] #creat a list
myList.append(33) #add a number to your list or appending data in a list
myList
len(myList)
#make a list of colors
a_list = ["blue", "yellow", "green"]

#indexing into a list
print(a_list[0])

#looking at data types
nums = [1,2,3,8]
chars = ["a", "b","c"]
boolean = [True, True, False]

mixed =[1,2, True,"blue", 5]
#checking the data type
type(nums[0]) # type returns the highest level object type

# negative indexing
mixed[-1] # returns the last element
mixed[-3] # third element from the right
#ranged indexing
mixed[1:4] #It will take all the elements except the last one (first inclusiv and last non- inclusive)
mixed[:4] # it will assume you are starting from the very first element which is "0" element
mixed [2:] # It si starting point to the end.   
#is an item in the list
1 in mixed #(confirming if an element is in a list)
#changing element
mixed[4] = "green"

#inserts in a specific position without overwrite
mixed.insert(0, "start")
print(mixed)

#other methods
#extend 
#remove
#pop
#clear
mixed.pop() #remove last elemnet and return it
mixed.append("green")
mixed.remove("start")

last = mixed.pop()

#list comprehension
print(mixed)

[x for x in mixed]
[x for x in mixed if isinstance(x,str)]
####################################################
#dictionaries:
#################################################
#manually coding a dictionary with the constructor function
md = {
    "first":"John",
    "last":"Smith",
    "year": 2017,
    "status":"active"
}

md2 = dict(first ="john", last = "Smith")
type(md2)  # what type is this
len(md2) #how long is the dictionary

#data type within a dictionary
dataTypes = {
    "string":"thing",
    "integer":3,
    "float": 3.14342,
    "list":[1,2,3,"a"],
    "boolean":False
}

#calling values by using key name in brackets
dataTypes["string"]
#builty in method works too
dataTypes.get("boolean")
#return all keys and values using methods in dictionary
dataTypes.keys()
dataTypes.values()
#return as a list of tuples
dataTypes.items()
#add element
dataTypes["age"] =36
#change value within a dicitionary
dataTypes["age"] = 35

############################################################
#NUMPY
import numpy as np
arr1 = np.array([0,1,2,3,4,5,6,7,8,9])
arr1[3]
arr1[-1]
arr1[:3]
arr1[1:5]
arr1[1:8:4]# last place in indexing encodes every nth place in arr1


#2d array
arr2 =np.array([[1,2,3], [4,5,6],[7,8,9]])
arr2[2,2]
arr2[:,2]
arr2[2,:]
arr2[0:2, 0:2]

#3d array
arr3 =([[[1,2],[3,4],[5,6],[7,8]]])
arr3
# 3d indexing
arr3[1,0,1]


#dimension
arr1.ndim
arr2.ndim
arr3.ndim
#shape of an array
arr1.shape
arr2.shape
arr3.shape


arr2.dtype
arr2.astype(str)


#reshaping an array
arr1.shape
arr1.reshape(2,5)


#combining arrays
first= np.array([1,2,3])
second = np.array([4,5,6,7,8,9])
longArray =np.concatenate((first, second))
longArray

#select axis 
newStack =np.concatenate((arr2, arr2), axis =1)
newStack.shape

#stacking arrays
newStack=np.stack((arr2,arr2))
newStack.shape
#splitting arrays
np.array_split(arr1,2, axis=0)


from numpy import random
random.seed(seed =100)
random.randint(50) #value from 0 to 50
random.rand(50) #50 vals 0 to 1
random.rand(50, 5, 10)
random.choice(arr1) # random number from arr1
random.choice(arr1, size = (3,3)) 
random.choice([0,1], p =[.3, .7], size = 100)
random.choice([0,1], p =[.1, .9], size = 1000)

x = random.normal(loc = 5, scale =3, size = 20)
import matplotlib.pyplot as plt

plt.hist(x)
plt.show()


x = random.binomial(n = 10, p =0.5, size = 300)
print(x)

plt.hist(x)
plt.show()

random.uniform(low =1, high =10, size =50)
print(x)

# math
# math between arrays
# y -x
# y/x
# y7x
#y +x

x* 100
arr2 * arr2


np.mean(arr2)
np.max(arr2)

#if stat
a= 3
if  a>=5:
    print("a is grater than or equal to 5")
else:
    print("a is less than 5")
a =3
b = 3
operation = "exp"

if operation == "mult":
    y = a * b
elif: operation === "div":
    y =a/b
elif operation == "add":
    y = a + b
elif operation == "sub":
   y = a -b
else:
    y = "I don't know that operation":

    #############################################

    #LOOPS
    ############################################

    l = [10, 20]
    for i in range(2):
        print(l[i])

#loop

x = ["blue, "green."red"]

for i in x:
    print(i)
# a more complicated loop
rnd = random.unifrom(low = 1, high = 5, size =10)
outList = [] #truly empty list

for i in range(len(arr1)):
    outList.append(rnd[i] = arr1[i])
outList

#nested loop ifalse
rnd2D = randomuniform(low = 0, high =1, size = (3,3))
matOut = npiempty(shape(3,3)) # why does empty repopulate
shp = rnd2D.shape
shape
#nested loop
for i in range(shp[0]):
    for j in range(shp[1]):
        if rnd2D [i,j]>=0.5:
           matOut[i, j] =rnd2D[i, j] * 1000
        else:
             matOut[i, j]= rnd2D[i,j]/1000
 matOut

####################################
#Pandas
####################################
import pandas as pd

dates = pd.date_range("20130101", periods = 6)

df = pd.DataFrame(np.random.randn(6, 4), index=dates, columns=list("ABCD"))
df

df.head(4)
df.tail(4)
df.index # pulls the row index names

df.describe


#-----------------DF GROUPING AND SUMMARY--------------#
mean_table = ds.groupby("species")[["petal_length","sepal_length"]].mean()
ds_long = pd.melt(ds, id_vars=['species'], value_vars=["sepal_width", "sepal_length", "petal_width", "petal_length"],
var_name='vars', value_name='vals')

#FUNCTIONS
import pandas as pd

# Read CSV file
df = pd.read_csv("iris.data.csv"csv")

# View first 5 rows
print(df.head())

# table with two indexes; species and variable
mult_indx = ds_long.groupby(["species", "vars"]).mean()


# pivot tables - another way of grouping
pd.pivot_table(ds_long, values="vals", index=["vars"], columns=["species"], aggfunc=np.mean)
pd.pivot_table(ds_long, values="vals", index=["vars"], columns=["species"], aggfunc=np.sum)



#GRAPHICS - Seabourne
# stacking:

#basic finctions structure
###############################
#Start funciton
def number_adder(a =None, None):
    # PURPOSE: add two nums and return the sum
    #params: a =numeric, b = numeric
    #output: numeric sum of a and b
    if a ==None or b==None:
        out ="please provide inputs for a and b of type numeric."
    else:
       out = a +b
    return(out)

################################################################################################################################
number_adder_two(a ="out", b= 4)


#Graphics seaborn
#import seaborn

import seaborn as sns
sns.set_theme(style = "ticks", font_scale =1.5)
#styles: "darkgrid", "whitegrid" "dark" "white "ticks


#scatter plot

##species as column
f= sns.relplot(
    x = "sepal_width", y = "petal_length", 
    style ="species", hue ="species"
)
f.set_axis_labels("Sepal Width", "Petal Length", labelpad =10)
f.legend.set_title("Species")
sns.set_theme(style ="ticks", font-scale = 1.5)
pd.read_csv("iris.data.csv") 
