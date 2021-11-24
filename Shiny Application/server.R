# First Creating the Data Frame

Teams <- c("India", "Pakistan", "Australia", "England", "South Africa",
          "New Zealand", "West Indies", "Afghanistan", "Sri Lanka", "Bangladesh")

Played <- c(27, rep(28, 8), 27)

Points <- c(63, 58, 54, 53, 51, 50, 49, 42, 40, 39)

leagueTable <- data.frame(Teams, Played, Points)

shinyServer(
    function(input, output) {
        output$lTable <- renderDataTable(leagueTable, options=list(paging = FALSE, searching = FALSE))
        ind <- reactive({
            switch(input$ind, "win" = 3, "draw" = 1, "loss" = 0)
        })
        pak <- reactive({
            switch(input$pak, "win" = 3, "draw" = 1, "loss" = 0)
        })
        aus <- reactive({
            switch(input$aus, "win" = 3, "draw" = 1, "loss" = 0)
        })
        eng <- reactive({
            switch(input$eng, "win" = 3, "draw" = 1, "loss" = 0)
        })
        saf <- reactive({
            switch(input$saf, "win" = 3, "draw" = 1, "loss" = 0)
        })
        sri <- reactive({
            switch(input$sri, "win" = 3, "draw" = 1, "loss" = 0)
        })
        ban <- reactive({
            switch(input$ban, "win" = 3, "draw" = 1, "loss" = 0)
        })
        afg <- reactive({
            switch(input$afg, "win" = 3, "draw" = 1, "loss" = 0)
        })
        nz <- reactive({
            switch(input$nz, "win" = 3, "draw" = 1, "loss" = 0)
        })
        wi <- reactive({
            switch(input$wi, "win" = 3, "draw" = 1, "loss" = 0)
        })
       
        output$totalPoints <- renderText({
            paste("These results give India a total of ", 
                  63 + pak() + aus() + eng() + saf() + sri() + 
                      ban() + afg() + nz() + 
                      wi(), " points.")
            
        })
        output$pakRequire <- renderText({
            paste("To win the Tournament, Pakistan would need ", 
                  63 + pak() + aus() + eng() + saf() + sri() + 
                      ban() + afg() + nz() + 
                      wi() - 57, " points.")
        })
        output$ausRequire <- renderText({
            paste("To win the Tournament, Australia would need ", 
                  63 + pak() + aus() + eng() + saf() + sri() + 
                      ban() + afg() + nz() + 
                      wi() - 53, " points.")
        })
        output$engRequire <- renderText({
            paste("To win the Tournament, England would need ", 
                  63 + pak() + aus() + eng() + saf() + sri() + 
                      ban() + afg() + nz() + 
                      wi() - 52, " points.")
        })
        output$safRequire <- renderText({
            paste("To win the Tournament, South Africa would need ", 
                  63 + pak() + aus() + eng() + saf() + sri() + 
                      ban() + afg() + nz() + 
                      wi() - 50, " points.")
        })
        output$sriRequire <- renderText({
            paste("To win the Tournament, Sri Lanka would need ", 
                  63 + pak() + aus() + eng() + saf() + sri() + 
                      ban() + afg() + nz() + 
                      wi() - 49, " points.")
        })
        output$banRequire <- renderText({
            paste("To win the Tournament, Bangladesh would need ", 
                  63 + pak() + aus() + eng() + saf() + sri() + 
                      ban() + afg() + nz() + 
                      wi() - 48, " points.")
        })
        output$afgRequire <- renderText({
            paste("To win the Tournament, Afghanistan would need ", 
                  63 + pak() + aus() + eng() + saf() + sri() + 
                      ban() + afg() + nz() + 
                      wi() - 41, " points.")
        })
        output$nzRequire <- renderText({
            paste("To win the Tournament, New Zealand would need ", 
                  63 + pak() + aus() + eng() + saf() + sri() + 
                      ban() + afg() + nz() + 
                      wi() - 39, " points.")
        })
        output$wiRequire <- renderText({
            paste("To win the Tournament, West Indies would need ", 
                  63 + pak() + aus() + eng() + saf() + sri() + 
                      ban() + afg() + nz() + 
                      wi()- 38, " points.")
        })
    }
)