library(shiny)

mpgpredict <- function(vwt,vcyl)
{
     fit <- lm(mpg ~ wt + cyl, data=mtcars)
     new.car <- data.frame(wt=vwt,cyl=vcyl)
     predict(fit,newdata=new.car)
}

shinyServer(
     function(input, output) {
          rwt <- reactive({as.numeric(input$vwt)*1000})
          rcyl <- reactive({as.numeric(input$vcyl)})
          output$oid1 <- renderText({rwt()      })
          output$oid2 <- renderText({rcyl()      })
          output$prediction <- renderText({mpgpredict(input$vwt,input$vcyl)})
     }
)