#Using plotly to create maps in Python
#Olukayode Arowosegbe
# 7th April 2026
#load packages:
import json
import pandas as pd
import plotly.express as px
import plotly.graph_objects as go

#load data here (gapminder)
gap = px.data.gapminder().query("year==2007")
gap.head()

    #choropleth
fig = px.choropleth(
    gap,
    locations= "iso_alpha",
    color = "lifeExp",
    hover_name="country",
    color_continuous_scale="viridis",
    title = "Life Exp. By country(2007)"
)
fig.show()


#crop this map and improve labels:

fig.update_layout(
    coloraxis_colorbar_title ="Years",
    margin = dict(l=0, r =0, t= 50, b= 0)
)

 #gdp with more hovering information:
fig = px.choropleth_map(
    gap,
    locations="iso_alpha",
    color="gdpPercap",
    hover_name="country",
    hover_data={
        "lifeExp": ":.1f",
        "pop": ":,",
        "gdpPercap": ":,.0f",
        "iso_alpha": False
    },
    color_continuous_scale="Plasma",
    title="GDP per capita by country (2007)"
)
fig.show()

#update outlines of GDP map

fig>update_geos(
    showframe =False,
    showcoastlines = False
)

#crop map to one region
americas = gap.query("continent =='Americas'")
america

fig = px.choropleth(
    gap,
    locations= "iso_alpha",
    color = "lifeExp",
    hover_name="country",
    color_continuous_scale="Tealgrn",
    title = "Life Exp. By country(2007)"
)

fig.update_geos(
    scope = "north america",
    showland =True,
    landcolor = "rgb(240,240,240)"
)
fig.show()

# look ar some prj

fig.update_geos(projection_typr= "natural earth")
fig.show()


fig = px.choropleth_map(
    county_df,
    geojson=county_geojson,
    locations="fips",
    featureidkey="id",
    color="unemp",
    color_continuous_scale="Viridis",
    zoom=3,
    center={"lat": 37.8, "lon": -96},
    map_style="carto-positron",
    opacity=0.7,
    title="US county unemployment"
)
fig.show()

fig.update_layout(
    map_style="open-street-map",
    margin=dict(l=0, r=0, t=50, b=0)
)
fig.show()
