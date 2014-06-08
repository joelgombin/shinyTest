data(iris)

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Test selectizeInput"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    selectizeInput(inputId="widget", choices=names(iris)[1:4], label="select some name", multiple=FALSE)
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
  )
))
