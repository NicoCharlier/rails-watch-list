require "json"
require "open-uri"

url = "https://api.themoviedb.org/3/movie/top_rated?api_key=e7eb27a062e730f836a0da1953de5ac1&language=en-US&page=1"
films_serialised = URI.open(url).read
films = JSON.parse(films_serialised)
movies = films["results"].first(5)
movies.each do |movie|
  new_movie=  Movie.create(title: movie['title'], overview: movie['overview'], poster_url: "https://image.tmdb.org/t/p/original/#{movie['poster_path']}", rating: movie['vote_average'])
  puts new_movie.title
end

List.create(name: "My Favorite Movies")
List.create(name: "My Parents Movies")