
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
data(iris)
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
     
    hist(iris[,input$widget])
    
  })
  
})
