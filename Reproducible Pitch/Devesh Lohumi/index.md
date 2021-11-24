---
title       : World Cup Predictor Application
subtitle    : Is it possible to beat India in the Data Science Cricket World Cup ?
author      : Devesh Lohumi
framework   : io2012       # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- bg:#ECF9F9

## Why to use this application ?

* In the mystical world of Data Science, we have this famous Cricket World Cup.
* So far Team India is leading with 63 points.
* There are a lot of Cricket Fans Across the World, and they would love to see their respective teams win as well. 
* This application helps these fans to play with their imaginations
and put in their predictions to see how many points their team
requires to win the World Cup.
* This application can be further incorporated with online Sports websites to keep the users engaged.

--- .class #id bg:#ECF9F9

## The ui.R file

* This file uses the fluidPage layout.
* We have used tabSetPanel to put all the information in a modular fashion in different tabs so as to not cram data in a single page.
* We have used Radio Buttons in the application to take user input instead of text input so that giving input is faster and more convenient.


```r
radioButtons("pakistan", "24/11 - India vs Pakistan",
                                              c("India Win" = "win",
                                                "Draw" = "draw",
                                                "India Loss" = "loss"), inline=TRUE)
```

* The results are shown as lines of text in the End of Tournament Tab Panel.

--- .class #id bg:#ECF9F9

## The server.R file

* We store the results in a dataframe in the server.R file for easy server side calculations. We use the Shiny function renderDataTable which gives Table output with the help of JavaScript library DataTables.



```r
output$lTable <- renderDataTable(leagueTable, options=list(paging = FALSE, 
                                                           searching = FALSE))
```

* switch function is used to turn the radio button text input to a numerical value.


```r
aus <- reactive({
                        switch(input$aus, "win" = 3, 
                                                  "draw" = 1, 
                                                  "loss" = 0)
                })
```

--- .class #id bg:#ECF9F9

## How are the Calculations Done ?

* The points are assigned to each fixture similar to this. Then India's total points are calculated:

```r
pak <- 3; aus <- 1; eng <- 3; saf <- 3; sri <- 0; ban <- 1; 
afg <- 3; nz <- 3; wi <- 1; 
```


```r
totPoints <- 63 + pak + aus + eng + saf + sri + ban + afg + nz + wi ;
totPoints
```

```
## [1] 81
```
* After this, the points another team (example,Australia) requires to win can be calculated

```r
AustraliaNeed <- totPoints - 58 + 1;
AustraliaNeed
```

```
## [1] 24
```

--- .class #id bg:#ECF9F9

## Improvements Possible
* Currently, this data is manually set. To be used in real life, this Data can be fetched from a Sports API which would then give real time accurate results.

* Moreover, a bar chart can be created for a better visual comparsion of the teams' scores.
