Rails.application.routes.draw do
  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------

  get "/recipe/:id" => "food#show"
  get '/new_recipe' => 'food#new'
  get '/create_recipe' => 'food#create'
  get '/recipe/:id/edit' => 'food#edit'
  get '/update_recipe/:id' => 'food#update'
  get '/recipe/:id/destroy' => 'food#destroy'
  get '/recipe' => 'food#index'
end
