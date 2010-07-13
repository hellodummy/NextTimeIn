ActionController::Routing::Routes.draw do |map|

  map.devise_for :users

  # TODO: Get rid of the 'locations' in the url. The url should read, in your head, "the next time in Block Island" or some shit like that.
  # map.content '/:id', :controller => :locations, :action => :show   # TODO: Reduce Routes in URLs
  
  map.resources :locations, :has_many => :tasks do |locations|
    locations.resources :tasks
  end


  map.root :controller => :pages, :action => :show, :permalink => "welcome"
  
  map.resources :pages
  map.static ':permalink', :controller => :pages, :action => :show


end
