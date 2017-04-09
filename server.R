#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  tempPlot1 <- ggplot(street, aes(time, temp)) + geom_line(data=subset(street,light=="1"),stat="identity") + scale_y_continuous(limit = c(10, 30))
  tempPlot2 <- ggplot(street, aes(time, temp)) + geom_line(data=subset(street,light=="2"),stat="identity") + scale_y_continuous(limit = c(10, 30))
  tempPlot3 <- ggplot(street, aes(time, temp)) + geom_line(data=subset(street,light=="3"),stat="identity") + scale_y_continuous(limit = c(10, 30))
  tempPlot4 <- ggplot(street, aes(time, hum)) + geom_bar(data=subset(street,light=="1"),stat="identity")
  output$plot1 <- renderPlot(tempPlot1)
  output$plot1 <- renderPlot(tempPlot1)
  output$plot2 <- renderPlot(tempPlot2)
  output$plot3 <- renderPlot(tempPlot3)
  output$plot4 <- renderPlot(tempPlot4)
  
  output$data <- renderTable({
    mtcars[, c("mpg", input$variable), drop = FALSE]
  }, rownames = TRUE)
 
})
