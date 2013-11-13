Selector::Application.routes.draw do
  root :to => "addresses#index"
  resources :addresses
  
  get '/states', :to => "states#index"
end