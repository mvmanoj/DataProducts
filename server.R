#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(shiny)

#https://mkrishna.shinyapps.io/mtCarsShinyApp/

#data(mtcars)
#

palette(c("#E41A1C","#377EB8","#4DAF4A","#984EA3","#FF7F00","#FFFF33"))

shinyServer(function(input, output, session) {
  
  # Combine the selected variables into a new data frame
  inputmtcars <- reactive({
    mtcars[, c(input$xcol, input$ycol)]
  })
  
  clusters <- reactive({
    kmeans(inputmtcars(), input$clusters)
  })
  
  output$plot1 <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(inputmtcars(),
         col = clusters()$cluster,
         pch = 20, cex = 3)
    points(clusters()$centers, pch = 3, cex = 4, lwd = 2)
  })
  
  
  output$summary <- renderPrint({
    dataset <- clusters()
    dataset
  })
})