class ActorsController < ApplicationController

  def index

    @actors_list = Actor.all 
    render({ :template => "actors_templates/index.html.erb"})

  end

  def actor_bio

    actor_id = params.fetch("actor_id")
    @actor_info = Actor.where({:id => actor_id}).at(0)
    # @filmography = Movie.where ({ :director_id => director_id})
  # @movie_info = Movie.where(:id => 1).at(0).id
    render({ :template => "actors_templates/bio.html.erb"})

  end

end