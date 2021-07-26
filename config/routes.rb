Rails.application.routes.draw do
root :to =>'pages#home'
get 'home/about' => 'pages#about'
# 'users/signup'=> 'users#signup'
# '/signin' => 'users#signin'
resources :users, :only => [:new, :create]
# resources :samples, :only => [:show]
# resources :instruments, :only => [:show]
# resources :artists, :only => [:show]

end
