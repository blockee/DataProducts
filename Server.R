nfl <- read.csv("nfloffense2013.csv")
shinyServer(
        function(input, output){
                output$score <- renderPrint({nfl[nfl$TEAM == input$team, names(nfl) == input$stat ]})
                output$ss <- renderPrint({(nfl[nfl$TEAM == input$team, names(nfl) == input$stat ] - 
                        mean(nfl[,names(nfl) == input$stat]))/sd(nfl[,names(nfl) == input$stat])})
        }
        )
