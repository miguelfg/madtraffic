require(shiny)
require(rCharts)

source("global.R")

shinyServer(function(input, output) {
  
  output$map_container <- renderMap({
#     getKMLData()
#     plotMap(500)
    plotMap(input$num_cams)
  })
})
