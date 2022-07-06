library(rvest) #use in text analysis
library(dplyr)

imdb_link = "https://www.imdb.com/search/title/?title_type=feature&num_votes=25000,&genres=adventure&sort=user_rating,desc"

#read_html() returns the html code of webpage
htmlPage = read_html(imdb_link)



#reading movie name

movie_name = htmlPage%>%html_nodes('.lister-item-header a')%>%html_text()


# reading movie release year
movie_year = htmlPage %>% html_nodes('.text-muted.unbold')%>%html_text()

# reading rateing

movie_rate = htmlPage %>% html_nodes('.ratings-imdb-rating strong')%>%html_text()


#gross Income
movie_gross=htmlPage %>% html_nodes('.ghost~ .text-muted+ span')%>%html_text()

# movie description
movie_descrip =htmlPage %>% html_nodes(' .ratings-bar+ .text-muted')%>%html_text()

top50Movie = data.frame(movie_name,movie_year,movie_rate,movie_descrip)
