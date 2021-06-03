class MoviesController < ApplicationController

def index

  @movie_list = Movie.all
  # @director_name = Director.all
  render({ :template => "movie_templates/index.html.erb"})

end

def movie_info
  movie_id = params.fetch("movie_id")
  @movie = Movie.where({ :id => movie_id}).at(0)
  render({ :template => "movie_templates/movie_info.html.erb"})

end

end