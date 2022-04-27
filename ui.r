library(shiny)
library(dplyr)
library(sf)
library(ggplot2)
library(tmap)

source("mod_ui.R")
source("mod_server.R")

shinyUI( 
fluidPage(
  titlePanel("Modularizing Shiny App"),
  
    mainPanel(
      plotUI("box"),
      plotUI("map")
      )
    )
)