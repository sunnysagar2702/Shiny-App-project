library(shiny)

library(UsingR)
data(mtcars)
shinyServer(
        function(input, output) {
                
                
                ##move the mtcars data into a temp data buffer 
                ##currently there are no further operations on this as
                ## I couldn't get the thing to work the way I wanted...
                
                cardata<-mtcars
                
                ##histrogram pf actual data
                
                output$newHist <- renderPlot({
                              
                        hist(cardata$mpg, xlab='mpg', col='lightblue',main='Histogram of Data', breaks=10, xlim=c(5,40), ylim=c(0,8))
                        mu <- input$mu
                        lines(c(mu, mu), c(0, 200),col="red",lwd=5)
                        mse <- mean((cardata$mpg - mu)^2)
                        text(25, 5.5, paste("mean = ", mu))
                        text(25, 6, paste("MSE = ", round(mse, 2)))
                        
                        
                        
                })
                
                #histogram of fitted data
                
                output$newHist2 <- renderPlot({
                        model<-glm(mpg~disp+wt, data=cardata)
                        modelmpg<-predict(model, mtcars[,-1])
                        hist(modelmpg, xlab='mpg', col='green',main='Histogram of Model', breaks=10, xlim=c(5,40), ylim=c(0,8))
                        mu <- input$mu
                        lines(c(mu, mu), c(0, 200),col="red",lwd=5)
                        mse <- mean((modelmpg - mu)^2)
                        text(25, 5.5, paste("mean = ", mu))
                        text(25, 6, paste("MSE = ", round(mse, 2)))
                })
                
                
        }
)
