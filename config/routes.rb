Showstopper::Application.routes.draw do
  # site
  root :to => 'site#land'

  namespace :artist do
    match '/' => 'site#dashboard'
    resources :media_files
  end
  
  namespace :api do
    resources :media_files
  end
  
  devise_for :users
end
