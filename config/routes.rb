Rails.application.routes.draw do
  root 'users#index'

  post 'p_saveds/save_search' => 'p_saveds#save_search'

  post 'p_saveds/favorite_property' => 'p_saveds#favorite_property'

  get 'properties/homepage' => 'properties#homepage'

  get 'properties/list_property' => 'properties#list_property'

  post 'properties/hold_data' => 'properties#hold_property_data'

  get 'properties/confirm_property' => 'properties#confirm_property'

  get 'properties' => 'properties#properties_list'

  post 'properties/create' => 'properties#create'

  post 'properties/search' => 'properties#search'

  get 'properties/contact_seller' => 'properties#contact_seller'

  get 'properties/edit_listing' => 'properties#edit_listing'

  get 'properties/:id/edit_confirmed' => 'properties#edit_confirmed'

  patch 'properties/:id/update_confirmed' => 'properties#update_confirmed'

  get 'properties/new_properties' => 'properties#new_properties'

  get 'properties/popular_properties' => 'properties#popular_properties'

  get 'properties/rent_properties' => 'properties#rent_properties'

  get 'properties/zestimate' => 'properties#zestimate'

  get 'users/welcome' => 'users#welcome'

  get 'users/user_profile' => 'users#user_profile'

  post '/login' => 'users#login' #convert to SessionController

  get '/logout' => 'users#logout' #convert to SessionController

  post '/register' => 'users#register' #convert to SessionController

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
