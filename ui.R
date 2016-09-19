library(shiny)


shinyUI(
  navbarPage("MPG Analysis",
    tabPanel("Graph",
      fluidRow(
        column(3,
          wellPanel(
            h4("Axes"),
            selectInput("xaxis", "Choose X axis:", 
            choices = c("cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"))
         )
        ),
        column(9,
          plotOutput("view")
        )
      )
    ),
    tabPanel("Data",
      "This webapp is using the mtcars data set."
    ),
    tabPanel("Help / Manual",
      "This page is a short introduction into the usage of this webpage",
      hr(),
      p("Definition of variables"),
      tags$li("mpg:	Miles/(US) gallon"),
      tags$li("cyl:	Number of cylinders"),
      tags$li("disp:	Displacement (cu.in.)"),
      tags$li("hp:	Gross horsepower"),
      tags$li("drat:	Rear axle ratio"),
      tags$li("wt:	Weight (1000 lbs)"),
      tags$li("qsec:	1/4 mile time"),
      tags$li("vs:	V/S"),
      tags$li("am:	Transmission (0 = automatic, 1 = manual)"),
      tags$li("gear:	Number of forward gears"),
      tags$li("carb:	Number of carburetors"),
      
      hr(),
      tags$ul(
        tags$li(a("GitHub repo", href="https://github.com/smithdanw/DevelopingDataProducts")), 
        tags$li(a("Supbmitted presentation", href="http://rpubs.com/smithdanw/DevelopingDataProducts"), "on Rpubs")
      )
    )
  )
)