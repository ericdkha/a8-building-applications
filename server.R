# Server.r

# Read in appropriate packages
library(plotly)
library(shiny)

# Source functions
source('scripts/create_plot.R')

# Read in datatable
irisData <- data.frame(iris)

# Set up the server 
shinyServer(function(input, output) {
  output$plot <- renderPlotly({
    create_plot(irisData, input$variable, input$variable2)
  })
  
})

