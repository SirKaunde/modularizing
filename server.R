shinyServer(
  function(input,output,session){
    
    afsis.data <- read.csv("./data/RandomForest_data.csv") %>% 
      mutate(
        Depth =factor(Depth, levels = c("Topsoil","Subsoil"), ordered = TRUE)
      ) %>% 
      st_as_sf(coords = c("Longitude","Latitude"), crs = 4326)
    
    output$Soil_box <- renderPlot({
      ggplot(afsis.data, aes(x=LandCover,y=CORG, color=Depth))+
        geom_boxplot()
      
     
    })
    
    output$Soil_Map <- renderPlot({
      data("World")
      World %>% 
        filter(continent == "Africa") %>% 
        tm_shape()+
        tm_borders(col = "brown")+
        tm_shape(afsis.data)+
        tm_dots(col = "LandCover", size = "CORG")
      
    })
  }
)

