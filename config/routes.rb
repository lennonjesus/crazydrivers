OmniauthDemo::Application.routes.draw do

  resources :positions

  resources :best_laps

  resources :drivers

  resources :races

  match "users/admin" => "users#admin"

  # Omniauth pure
  match "/signin" => "services#signin"
  match "/signout" => "services#signout"

  match '/auth/:service/callback' => 'services#create' 
  match '/auth/failure' => 'services#failure'

  resources :services, :only => [:index, :create, :destroy] do
    collection do
      get 'signin'
      get 'signout'
      get 'signup'
      post 'newaccount'
      get 'failure'
    end
  end

  # used for the demo application only
  resources :users, :only => [:index] do
    collection do
      get 'test'
    end
  end
   
  root :to => "users#index"
end
