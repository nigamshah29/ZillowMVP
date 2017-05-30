Rails.application.routes.draw do
  root 'users#index'

  post 'p_saveds/save_search' => 'p_saveds#save_search'

  post 'p_saveds/favorite_property' => 'p_saveds#favorite_property'

  get 'properties/homepage' => 'properties#homepage'

  get 'properties/list_property' => 'properties#list_property'

  post 'properties/hold_data' => 'properties#hold_property_data'

  get 'properties/confirm_property' => 'properties#confirm_property'

  post 'properties/create' => 'properties#create'

  post 'properties/search' => 'properties#search'

  get 'properties/contact_seller' => 'properties#contact_seller'

  get 'properties/edit' => 'properties#edit'

  patch 'properties/:id/update' => 'properties#update'

  get 'properties/zestimate' => 'properties#zestimate'

  get 'users/welcome' => 'users#welcome'

  get 'users/user_profile' => 'users#user_profile'

  post '/login' => 'users#login' #convert to SessionController

  get '/logout' => 'users#logout' #convert to SessionController

  post '/register' => 'users#register' #convert to SessionController

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
