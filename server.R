# server.R

library(datasets)
library(ggplot2)
data <- mtcars

shinyServer(function(input, output) {
    
    output$plot <- renderPlot({
    data <- subset(data,
                   cyl>=input$cyl.range[1] & cyl<=input$cyl.range[2] &
                       disp>=input$disp.range[1] & disp<=input$disp.range[2] &
                       wt>=input$wt.range[1] & wt<=input$wt.range[2] &   
                       qsec>=input$qsec.range[1] & qsec<=input$qsec.range[2]
    )
    
         qplot(mpg, hp, data=data, 
               geom=c("point","smooth"), span=3, method="loess")
     })
})
