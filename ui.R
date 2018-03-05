#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(shiny)

shinyUI(pageWithSidebar(
   headerPanel('mtCars Clustering Dashboard'),
  
  sidebarPanel(
    selectInput('xcol', 'Select X variable', names(mtcars)),
    selectInput('ycol', 'Select Y variable', names(mtcars),
                selected=names(mtcars)[[2]]),
    numericInput('clusters', 'Slelect cluster count (2 to 5)', 2,
                 min = 1, max = 5),
    a("Click here for Documentation & readme",href="https://github.com/mvmanoj72/DataProducts"),
    br(),
    br(),
    br(),
    br()),
  
  mainPanel(
    plotOutput('plot1')
 
  ))
)




