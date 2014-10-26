NFL Standard Score
========================================================
author: Brent
date: 10-25-2014

Standard Score
========================================================

Standard Score is a useful stat for getting a snapshot of team performance.

- Standardizes the scale of stats so you can effectively compare different stats.
- Puts numbers in the proper context.
- Allows for easier comparison between different eras.

Formula
========================================================
Here's a breakdown of the standard score formula used in the Shiny app.

```r
nfl <- read.csv("nfloffense2013.csv")
stat <- nfl[nfl$TEAM == 'Arizona', names(nfl) == 'PASS']
sScore <- (stat - mean(nfl[,names(nfl) == 'PASS']))/sd(nfl[,names(nfl) == 'PASS'])
sScore
```

```
[1] 0.391
```

Current Use
========================================================

Many publications, including Grantland.com, use standard score to put stats
in context. With the explosion of analytics in sports statistics, standard
score is a great way to introduce casual fans to more advanced statistics.

App Future
========================================================

I'd like to add the following functionality to this app in the future:

- Multi-select so that many different stats can be seen at once.
- Defensive and Special Teams stats included.
- The option to include adjustments for strength of schedule.
- A 2014 version that updates weekly as games occur.
- A visualization component.
