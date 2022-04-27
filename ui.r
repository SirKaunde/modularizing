library(shiny)
library(dplyr)
library(sf)
library(ggplot2)
library(tmap)

shinyUI( 
fluidPage(
  titlePanel("Modularizing Shiny App"),
  
    mainPanel(
      plotOutput("Soil_box"),
      plotOutput("Soil_Map")
      )
    )
)