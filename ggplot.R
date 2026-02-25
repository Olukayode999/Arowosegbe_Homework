
######################################################################################
p1 <- ggplot(data = <DATA>) +
      aes(<MAPPINGS>) +
      <GEOM_FUNCTION>(aes(<MAPPINGS>),
                      stat=+<STAT>,
                      position=<POSITION>) +
                      <COORDINATE_FUNCTION> +
                      <fACET_FUNCTION>

# required packages for this script 
library(ggplot2)
library(patchwork)
library(ggthemes)
# load our dataset(mpg)

d <- mpg

# our first call to ggplot: histogram
ggplot(data = d) +
  aes(x = hwy) +
  geom_histogram(fill = "blue", color ='')
                        
#density plot
ggplot(data = d) +
      aes(x = fl) +
                        
      geom_bar()


#barplot with y response
x_treatment <-  c*("control", "low", "high")
y_response <-  c(12, 2.5, 22)
summary_data <-  data.frame(x_treatment, y_response)

ggplot(data = summary_data) +
aes (x =x_treatment, y =y_response) +
geom_col(fill = c("grey50", "goldenrod", "goldenrod"),)

#plotting curves
my_vec <-  seq(1, 100, by = 0.1)

#plot a simple function
d_frame <- data.frame(x =my_vec, y =sin(my_vec))

#plot lines
ggplot(data =d_frame) +
  aes(x =x, y=y) +
  geom_line()


d_frame <- data.frame(x=my_vec, y = dgamma(my_vec,shape))

ggplot(data =d_frame) +
  aes(x =x, y=y) +
  geom_line()


# themes and fonts
p1 <- ggplot(data = d, mapping =aes(x =displ, y = cty))+
      geom_point()

p1 + theme_minimal()
p1 + theme+linedraw()
p1 + theme_dark()
p1 + theme_void()
p1 + theme_par()

#changing font size and type
p1 + theme_classic(base_size = 30, base_family="serif")

# code for adding additional fonts
library(extrafont)
font_import() #imports all system fonts (run once)

#using other fonts for presentations
p1 + theme_classic(base_sizes =35,
                   base_family="chalkduster")

#coordinate flipping in ggplot
p2  <- ggplot(data =d, mapping = aes(x =fl, fill = fl))+
      geom_bar() +
  labs(fill = "fuel Type", x = "Fuel Type", y ="count", title = "My plot")
  theme(legend.position = c(.2, .8))
    print(p2)
p2 + coord_flip() + 
  theme_grey(base_size = 20, base_family = "sans")

# setting and y lims
p1 <- ggplot(data =d, mapping =aes(x=displ, y=cty)) +
      geom_point() +
      theme_bw() +
      xlim(0, 8) +
      ylim(0, 50)+
print(p1)


###############################################
# multi panel plots

library ("ggthemes")
library ("patchwork")

g3 <- ggplot(data =d) +
  geom_histogram(fill = "royal")


# i have missed g1 to g4


g1 + g2
#plot three plots
g1 + g2 + g3 + plot_layout(ncol = 1)

#changing area of each plot
g1 + g2 + plot_layout(ncol = 1, heights = c(2,1))

# in the other dimension
g1 + g2 + plot_layout(ncol = 1, widths = c(2,1))

#adding spacers
g1 + plot_spaers() + g2

#nesteeeeeeeed layouts
g1 + {
    g2 +{
      g3 +
        g4 +
        plot_layout(ncol = 1)


    }
} + 
  plot_layout(ncol = 1)

# - operator for subtrack placement
 g1 = g2 -g3 + plot_layout(ncol = 1)

 #using | and \

 (g1 |g2|g3)/g4 +plot_annotation("Title Here", 
caption = "made this patchwork")


#adding tags
g1 / (g2 | g3) +
  plot_annotation(tag_levels = "A")

##########################################
#multi panel plots with facet

m1 <- ggplot(data = d) 
aes(x = displ, y =cty) +
geom_point()

#using facet grid
m1 + facet_grid(class ~ fl, scales = "free")
#facet for only one variable
m1 = facet _grid( class~.)

# facet wra[
m1 + facet_wrap(~class +fl, drop = F)


install.packages("ggthemes")
install.packages("patchwork")
