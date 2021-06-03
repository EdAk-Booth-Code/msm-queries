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
  
end