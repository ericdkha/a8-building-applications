# ui.R
# Read in appropriate packages
library(plotly)
library(shiny) 

# Read in datatable
irisData <- data.frame(iris)

shinyUI(fluidPage(
  #Create a titlePanel
  titlePanel("Fisher's Iris Data"),
  
  #Create the Sidebar Layout
  sidebarLayout(
    
    #Create a sidebar panel in the sidebar
    sidebarPanel(
      selectInput("variable", 
                  label = "Choose X-Axis Variable", 
                  choices= colnames(irisData),
                  selected = "Species"),
      selectInput("variable2", 
                  label = "Choose Y-Axis Variable", 
                  choices = colnames(irisData))
    ),
    # Create a main panel to display output
    mainPanel(
      plotlyOutput('plot')
    ))
))