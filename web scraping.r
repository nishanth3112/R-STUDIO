# IMPORTING LIBRARIES
library(rvest)
library(dplyr)
library(robotstxt)

#Checking whether website can be scrapped
path = paths_allowed("https://www.metacritic.com/browse/movies/score/metascore/all/filtered?sort=desc/")

# SCRAPPING WEBSITE
link <- 
  'https://www.metacritic.com/browse/movies/score/metascore/all/filtered?sort=desc'

# HTML ELEMENTS FROM WEBSITE
web <- read_html(link)

# SEGREGATING NAMES
name <- web %>% 
  html_nodes("tr:nth-child(1) h3")%>% html_text()

# VIEWING NAME LIST
View(name)


# SEGREGATING RATINGS
rating <- web %>% 
  html_nodes("#542176+ .clamp-score-wrap .perfect , #546633+ .clamp-score-wrap .perfect , #548059+ .clamp-score-wrap .perfect , #522553+ .clamp-score-wrap .perfect") %>% html_text()

# VIEW RATINGS LIST
View(rating)


# CREATING DATAFRAME
meta.ratings <- data.frame(name, rating)

# VIEW DATAFRAME
View(meta.ratings)

# SAVING DATA
write.csv (meta.ratings, "My_movie data.csv")
