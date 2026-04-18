#Using plotly to create maps in Python
#Olukayode Arowosegbe
# 8th April 2026
#load packages:
import json
import pandas as pd
import plotly.express as px
import plotly.graph_objects as go

#load data here (gapminder)
gap = px.data.gapminder()
(gap["year"]==2007)
gap_europe =gap[(gap["contininet"] == Europe) & ]

    #choropleth
fig = px.choropleth(
    gap_europe,
    locations= "iso_alpha",
    color = "gdpPercap",
    hover_name="country",
    color_continuous_scale="viridis",
    title="GDP per Capita in Europe(2007)"
    hover_data = {"gdpPercap": True,
    "pop": True,
    "iso_alpha": False
    },
)
fig.show()
