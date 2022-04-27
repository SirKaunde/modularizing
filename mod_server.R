plotServer <- function(id, plotObj){
  moduleServer(
    id,
    function(input, output, session){
      output$soil<-renderPlot({
        plotObj
      })
    }
  )
}