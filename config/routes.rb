Week6::Application.routes.draw do
  
  get "/flighttest/index" => 'flighttest#index'
  get "/flighttest/home" => 'flighttest#home'
  get "/flighttest/search" => 'flighttest#search'

  get "/login" => 'sessions#new'
  get "/logout" => 'sessions#destroy'
  get "/authenticate" => 'sessions#create'

  root 'flighttest#home'

  get "/users/new" => 'users#new'
  get "/users/create" => 'users#create'
  get "/users/:user_id/show" => 'users#show'

end
