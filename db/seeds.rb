require "open-uri"
require "json"


Movie.delete_all

url = 'https://tmdb.lewagon.com/movie/top_rated'
response = URI.open(url).read
movies_data = JSON.parse(response)

movies_data['results'].first(20).each do |movie_data|
  movie = Movie.find_or_initialize_by(title: movie_data['title'])
  movie.update!(
    overview: movie_data['overview'],
    poster_url: "https://image.tmdb.org/t/p/w500/#{movie_data['poster_path']}",
    rating: movie_data['vote_average']
  )

  puts "#{movie.title}"
end
