

############################################
install.packages("ggsci")
library(devtools)
install.packages("devtools")
############################
devtools::install_github("wilkelab/cowplot")
devtools::install_github("clauswilke/colorblindr")
install.packages("colorspace", repo = "http://R-Forge.R-project.org")

#Enabling packages
 library(ggplot2)
 library(ggthemes)
 library(colorblindr)
 library(colorspace)
 library(wesanderson)
 library(ggsci)
install.packages("colorblindr")
d <- mpg 

my_cols <- c("green", "thistle", "tomaoto", "cornsilk", "chocolate")

demoplot(my_cols, "maps")
demoplot(my_cols, "bar")
demoplot(my_cols, "scatter")
demoplot(my_cols, "heatmap")
demoplot(my_cols, "spine")
demoplot(my_cols, "perspective")

#Working with black and white color schemes
# choose grey(0 =black, 100 =white)
my_grey <- c("grey20", "grey50", "grey80")
demoplot(my_cols, "bar")

my_greys2 <-  grey(seq(from = 0.1, to = 0.9, length.out = 10))
demoplot(my_greys2, "heatmap")
p1 <- ggplot(d, aes(x = as.factor(cyl), y =cty, fill =as.factor))
fill = as.factor(cyl))) + geom_boxplot)
plot(p1_des)

#set transparency of images using the alpha

x1 <- rnorm(n =100, mean =0)
x2 <-  rnorm(n= 100, mean = 2.7)
d_frame <-  data.frame(v1 =c(x1, x2))
lab <- rep(c("control", "treatment"), each = 100)
d_frame <-  cblind(d_frame, lab)

h1 <-  ggplot(d_frame) +aes(x =v1, fill = lab)

h1 +geom_histogram(position = "identity", alpha =0.5, color = "black")
devtools::install_github("wilkelab/cowplot")
install.packages("colorspace", repos = "http://R-Forge.R-project.org")
devtools::install_github("clauswilke/colorblindr")
 # Boxplot default ggplot fill
p_fill <-  ggplot(d)