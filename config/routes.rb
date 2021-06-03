Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})

  get("/directors/eldest", { :controller => "directors", :action => "show_eldest"})

  get("/directors/youngest", { :controller => "directors", :action => "show_youngest"})

end
