Rails.application.routes.draw do

root :to =>'pages#home'
get 'home/about' => 'pages#about'

resources :users, :only => [:new, :create, :index]

get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

resources :soundbags, :only => [:new, :create]

get '/samples' => 'samples#index'
get '/samples/instruments' => 'samples#instrument'
get '/samples/artists' => 'samples#artist'
get '/samples/instruments/:name'=> 'samples#instrumentsample', :as => 'instsample'

get '/samples/artists/:name'=> 'samples#artistsample', :as => 'artsample'

resources :artists
resources :instruments
resources :collections


end
