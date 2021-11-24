shinyUI(fluidPage(
  headerPanel("Is it possible to Beat India in the Data Science Cricket World Cup ?"),
  sidebarPanel(
    dataTableOutput('lTable')
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("World Cup Predictor",
               h3("How To Use This App ? "),
               p("This Application will help you calculate how 
                                   many points the Indian Cricket Team will end up on by the end of the Tournament. It is then possible to
                                   see how many points each of the other 
                                   teams would require to win the Tournament."),
               p("
                 To Do : Predict the result on the Remaining Fixtures Tab for India's
                 remaining fixtures. After that, click on the End of Tournament Tab
                 to see How many Points do the other teams need to win the Tournament.
                 "),
               p("On the Left Is a Table on Which you can see the Current Tournament 
                                   Standings.")),
      tabPanel("Documentation",
               h1("How does this work ? "),h2(
                 "For each team we use the following equation to get the points required 
                 by it to win the Tournament.",
                 h3("Points Required = Score of India - Current Score of the This Team + 1"),
                 h4("Each Win is +3 Points."),
                 h4("Each Draw is +1 Points."),
                 h4("Each Loss leads to no change in Points.")
               )),
      tabPanel("Remaining Fixtures",
               radioButtons("pak", "24/11 - India vs Pakistan",
                            c("India Win" = "win",
                              "Draw" = "draw",
                              "India Loss" = "loss"), inline=TRUE),
               radioButtons("aus", "26/11 - Australia vs India",
                            c("India Win" = "win",
                              "Draw" = "draw",
                              "India Loss" = "loss"), inline=TRUE),
               radioButtons("eng", "29/11 - India vs England",
                            c("India Win" = "win",
                              "Draw" = "draw",
                              "India Loss" = "loss"), inline=TRUE),
               radioButtons("saf", "02/12 - South Africa vs India",
                            c("India Win" = "win",
                              "Draw" = "draw",
                              "India Loss" = "loss"), inline=TRUE),
               radioButtons("sri", "04/12 - India vs Sri Lanka",
                            c("India Win" = "win",
                              "Draw" = "draw",
                              "India Loss" = "loss"), inline=TRUE),
               radioButtons("ban", "08/12 - Bangaldesh vs India",
                            c("India Win" = "win",
                              "Draw" = "draw",
                              "India Loss" = "loss"), inline=TRUE),
               radioButtons("afg", "10/12 - Afghanistan vs India",
                            c("India Win" = "win",
                              "Draw" = "draw",
                              "India Loss" = "loss"), inline=TRUE),
               radioButtons("nz", "13/12 - India vs New Zealand",
                            c("India Win" = "win",
                              "Draw" = "draw",
                              "India Loss" = "loss"), inline=TRUE),
               radioButtons("wi", "15/12 - India vs West Indies",
                            c("India Win" = "win",
                              "Draw" = "draw",
                              "India Loss" = "loss"), inline=TRUE),
      ),
      tabPanel("End Of Tournament", 
               textOutput("totalPoints"),
               textOutput("pakRequire"),
               textOutput("ausRequire"),
               textOutput("engRequire"),
               textOutput("safRequire"),
               textOutput("sriRequire"),
               textOutput("banRequire"),
               textOutput("afgRequire"),
               textOutput("nzRequire"),
               textOutput("wiRequire")
      )
      ,tabPanel("GitHub Repository For this Code",
                a("https://github.com/dev625/DDP_Week4_Course_Project")
      )
      )
    )
  ))