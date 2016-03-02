# Build map function
create_plot <- function(df, variable, variable2){
  # Read in appropriate libraries
  library(RColorBrewer)
  library(dplyr)
  
  # Adding font for the legend
  f <- list(
    family = "sans-serif",
    size = 14,
    color = "#000"
  )
  # Adding background configurations for the legend
  l <- list(
    font = f,
    bgcolor = "#E2E2E2",
    bordercolor = "#FFFFFF",
    borderwidth = 2
  )
  
  #Plot graph
  plot_ly(df, 
          x = eval(parse(text = variable)), 
          y = eval(parse(text = variable2)),
          mode = "markers", 
          text = paste0(variable, " = ", eval(parse(text = variable)), " ", 
                        variable2, "= ", eval(parse(text = variable2))),
          color = Species,
          colors = "Set1") %>% 
    #Add layout options such as relabeling the axis and adding a title
    layout(title = paste('Comparing', variable, 'vs.', variable2), 
           xaxis = list(title = variable, size = 14, color = "#000"), 
           yaxis = list(title = variable2, size = 14, color = "#000"),
           legend = l
            )
} 
