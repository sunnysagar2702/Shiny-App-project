shinyUI(pageWithSidebar(
        headerPanel("Miles Per Gallon"),
        
        ##Sidebar panel with a slider
        
        sidebarPanel(
                sliderInput('mu', 'Mean MPG',value = 25, min = 4, max = 40, step = 2,)
        
                
        ),
        
       ##main panel text and graphs 
        
        mainPanel(
                p('This is a comparison of the histograms and MSE for mtcars data'),
                textOutput('text1'),
                p('The top graph is a histogram of the actual data and the bottom graph is a histogram of the modeled data'),
                p('This is a pretty dang modest effort...'),
                plotOutput('newHist'),
                plotOutput('newHist2')
                
        )
))
