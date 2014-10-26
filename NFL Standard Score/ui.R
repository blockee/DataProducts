nfl <- read.csv("nfloffense2013.csv")
shinyUI(pageWithSidebar(
        headerPanel("2013 NFL Offense Standard Score Calculator"),
        sidebarPanel(
               selectInput('team', 'Team', c((as.character(nfl$TEAM)))),
               selectInput('stat', 'Stat', c('YDS', 'PASS', 'RUSH', 'PTS'))
               ),
        mainPanel(
               p('2013 Total'),
               textOutput('score'),
               p(''),
               p('This results in a standard score of:'),
               textOutput('ss'),
               p(''),
               p('In standard score, 0 is average. Positive values indicate
                 a stat above average. Negative values are below average.
                 A quick guideline to interpreting different values: 1 = Good,
                 1.5 = Very Good, 2 = Great, 2.5+ = Epic and Incredible, -1 = Bad,
                 -1.5 Very Bad, -2 = Awful, -2.5 or worse = Epic Fail')
                )
        )
)
        