library(shiny)
shinyUI(pageWithSidebar(
     headerPanel("MPG Prediction"),
     sidebarPanel(
          numericInput('vwt', 'Weight (lb/1000)', 1, min = 1, max = 6, step = .1),
          numericInput('vcyl', 'Number of cylinders', 4, min = 4, max = 8, step = 2),
          submitButton('Submit'),
          br(''),
          h4('Instructions:'),
          p('This application predicts the Miles per Gallon of a car given the values of its weight and the number of cylinders in its engine. The predictive algorithm is based on a linear model fit from the Motor Trend Car Road Tests (mtcars) dataset. Fill in the predictors as instructed above and submit. Your validated inputs and predicted mpg value will change on the right.')
     ),
     
     mainPanel(
          h3('Results of prediction'),
          h4('Weight in pounds(lbs) entered'),
          verbatimTextOutput("oid1"),
          h4('Number of Cylinders entered'),
          verbatimTextOutput("oid2"),
          h4('Which resulted in a Miles per Gallon (MPG) prediction of '),
          verbatimTextOutput("prediction")
     )
))