Showstopper::Application.routes.draw do
  # site
  root :to => 'site#land'

  namespace :artist do
    match '/' => 'site#dashboard'
    resources :media_files
  end
  
  namespace :gallery do
    match '/' => 'display#setup'
    match '/display/(:display_id)' => 'display#display'
  end
  
  namespace :api do
    resources :media_files
    resources :displays
  end
  
  devise_for :users
end
