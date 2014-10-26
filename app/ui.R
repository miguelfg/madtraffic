require(shiny)
require(rCharts)

shinyUI(pageWithSidebar( 
    headerPanel("MADtraffic"),
    sidebarPanel(
      "MADtraffic", 
      sliderInput("num_cams",
                  "Number of traffic cameras to display:",
                  min = 100,
                  max = 500,
                  value = 100)
   ),
    
    mainPanel(
      tabsetPanel(
#         tabPanel("Puntos de medida del tráfico y calidad del aire", chartOutput("map_container", 'leaflet'))
        tabPanel("Traffic density measure points", chartOutput("map_container", 'leaflet'))
        
      )
    )
))



# 
# shinyUI(bootstrapPage( 
# #   tags$link(href='style.css', rel='stylesheet'),
# #   tags$script(src='app.js'),
# #   includeHTML('www/credits.html'),
# #   selectInput('network', '', sort(names(networks)), 'citibikenyc'),
#   chartOutput('map_container', 'leaflet')
# ))
