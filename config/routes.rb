Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})

  get("/directors/eldest", { :controller => "directors", :action => "show_eldest"})

  get("/directors/youngest", { :controller => "directors", :action => "show_youngest"})

  get("/directors/:director_id", { :controller => "directors", :action => "show_bio"})

  get("/movies", { :controller => "movies", :action => "index"})

  get("/movies/:movie_id", { :controller => "movies", :action => "movie_info"})    
  
  get("/actors", { :controller => "actors", :action => "index"})

  get("/actors/:actor_id", { :controller => "actors", :action => "actor_bio"})

end
