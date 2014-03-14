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

  # Product-related URLs

  # # CREATE
  # get "/products/new" => "products#new"
  # get "/products/create" => "products#create"

  # # READ
  # get "/products" => 'products#index'
  # get "/products/:product_id/show" => "products#show"

  # # UPDATE
  # get "/products/:product_id/edit" => "products#edit"
  # get "/products/:product_id/update" => "products#update"

  # # DELETE
  # get "/products/:product_id/delete" => "products#destroy"


  # # Review-related URLs

  # get "/reviews/create" => 'reviews#create'

end
