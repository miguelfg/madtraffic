require(shiny)
require(rCharts)

shinyUI(pageWithSidebar( 
    headerPanel("MADtraffic"),
    sidebarPanel(
      "MADtraffic", 
       selectInput(inputId = "x",
                   label = "Choose X",
                   choices = c('SepalLength', 'SepalWidth', 'PetalLength', 'PetalWidth'),
                   selected = "SepalLength"),
       selectInput(inputId = "y",
                   label = "Choose Y",
                   choices = c('SepalLength', 'SepalWidth', 'PetalLength', 'PetalWidth'),
                       selected = "SepalWidth")              
   ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Puntos de medida del tráfico y calidad del aire", chartOutput("map_container", 'leaflet'))
        
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
