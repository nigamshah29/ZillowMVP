Rails.application.routes.draw do

  resources :prop_images

  root 'properties#homepage'

  #Login/Registration Routes
  get 'users/welcome' => 'users#welcome'

  post '/register' => 'users#register'

  post '/login' => 'users#login'

  get '/logout' => 'users#logout'

  #Users Routes
  get 'users' => 'users#index' #This handles the rerouting for sessions, so don't delete

  get 'users/my_account' => 'users#my_account'

  get 'users/user_profile' => 'users#user_profile'

  #User's Listing Routes
  get 'users/:p_id/my_listing' => 'users#my_listing'

  get 'users/:p_id/change_listing' => 'users#change_listing'

  patch 'users/:p_id/update_listing' => 'users#update_listing'

  #Properties Routes
  get 'properties/:id/detail_page' => 'properties#detail_page'

  get 'properties/homepage' => 'properties#homepage'

  get 'properties/show' => 'properties#show'

  get 'properties/list_property' => 'properties#list_property'

  post 'properties/hold_data' => 'properties#hold_property_data'

  get 'properties/confirm_property' => 'properties#confirm_property'

  get 'properties' => 'properties#properties_list'

  post 'properties/create' => 'properties#create'

  post 'properties/search' => 'properties#search'

  get 'properties/contact_seller' => 'properties#contact_seller'

  get 'properties/edit_listing' => 'properties#edit_listing'

#Query routes for Properties Page
  get 'properties/new_properties' => 'properties#new_properties'

  get 'properties/popular_properties' => 'properties#popular_properties'

  get 'properties/rent_properties' => 'properties#rent_properties'

  get 'properties/zestimate' => 'properties#zestimate'

  #P_Saved Routes
  post 'p_saveds/save_search' => 'p_saveds#save_search'

  post 'p_saveds/favorite_property' => 'p_saveds#favorite_property'

  #Property Image Routes
  get 'prop_images/index' => 'prop_images#index'

  get 'prop_images/:p_id/new' => 'prop_images#new'

  get 'prop_images/edit' => 'prop_images#edit'

  post 'prop_images/:p_id/create' => 'prop_images#create'

  get 'prop_images/:p_id/show' => 'prop_images#show'

  patch 'prop_images/update' => 'prop_images#update'

  post 'properties/:id/favorite' => 'properties#favorite'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
