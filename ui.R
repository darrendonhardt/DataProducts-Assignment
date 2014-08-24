# ui.R

shinyUI(fluidPage(
    titlePanel("Data Products Assignment"),
    
    sidebarLayout(
        sidebarPanel(
            "FILTER OPTIONS",
            br(),
            br(),
            sliderInput("cyl.range",
                        label="Number of cylinders:",
                        min=4, max=8, value=c(4,8)),
            sliderInput("disp.range",
                        label="Displacement (cu.in.):",
                        min=71, max=472, value=c(71,472)),
            sliderInput("wt.range",
                        label="Weight (lb/1000):",
                        min=1, max=6, value=c(1,6), step=0.5),
            sliderInput("qsec.range",
                        label="Quarter Mile time (seconds):",
                        min=14, max=23, value=c(14,23), step=1)
            ),
         mainPanel(plotOutput("plot")
             )
    )
))