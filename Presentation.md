Presentation on mtcars model
========================================================
author: Winston Saunders
date: December 2014

My cool project
========================================================

Okay this project is really not all that cool. In fact is it pretty darn simple. But at least it works in shiny, which is more than I can say about my first attempt at something more ambitious. 
It does the following things:

- Loads the mtcars data.
- Plots a historgram of the mpg (miles per gallon).
- Adds a slider to the histogram so you can see the mean square error from a test "mu".
- Does a glm of the mt cars mpg data based on vehicle weight and displacement.
- Plots a histogram and a mean square error slider with test "mu".

The histogram
========================================================

This shows a histogram of the mtcars mpg data.




```r
hist(cardata$mpg, xlab='mpg', col='lightblue',main='Histogram of Data', breaks=10, xlim=c(5,40), ylim=c(0,8))
```

![plot of chunk histo1](Presentation-figure/histo1-1.png) 

The histogram with offset mean
========================================================

The offset mean can bee seen to increase the mean square error (MSE).


```r
                        mu <- 25.
```

![plot of chunk histo2](Presentation-figure/histo2-1.png) 


Model the Data
========================================================

Here is a model of the data. Again the mean square error is shown. 


```r
        formula <- mpg~disp+wt
```

![plot of chunk model](Presentation-figure/model-1.png) 


