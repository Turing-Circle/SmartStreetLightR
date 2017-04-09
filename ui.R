#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  mainPanel(
    
    selectInput("variable", "Variable:",
                c("Humidity1" = "h1",
                  "Humidity2" = "h2",
                  "Humidity3" = "h3")),
    tableOutput("data"),
    
    tabsetPanel(
      tabPanel("Plot1", plotOutput("plot1")),
      tabPanel("Plot2", plotOutput("plot2")),
      tabPanel("Plot3", plotOutput("plot3")),
      tabPanel("Plot4", plotOutput("plot4"))
    )
  )
  
  )
)
