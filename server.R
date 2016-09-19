data(mtcars)

shinyServer(  
  function(input, output) {    
    output$view <- renderPlot({
      axis <- input$xaxis
      plot(mtcars[, axis], mtcars$mpg, xlab = axis, ylab = "MPG", col = mtcars[, axis])
    })      
  }
)
