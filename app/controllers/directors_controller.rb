class DirectorsController < ApplicationController 

  def index

    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb"})
  end

  def show_eldest
    
    @eldest_director = Director.order({ :dob => :asc}).where.not({ :dob => nil}).at(0)  
    render({ :template => "director_templates/eldest.html.erb"})
 

  end

  def show_youngest

    @youngest_director = Director.order({ :dob => :asc}).where.not({ :dob => nil}).at(-1)  
    render({ :template => "director_templates/youngest.html.erb"})

  end

  def show_bio

  director_id = params.fetch("director_id")
  @director_info = Director.where({:id => director_id}).at(0)
  @filmography = Movie.where ({ :director_id => director_id})
  render({ :template => "director_templates/bio.html.erb"})
  # @movie_info = Movie.where(:id => 1).at(0).id
  end
  
end