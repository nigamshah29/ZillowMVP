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

  get 'properties' => 'properties#index'

  post 'properties/create' => 'properties#create'

  post 'properties/search' => 'properties#search'

  get 'properties/contact_seller' => 'properties#contact_seller'

  get 'properties/edit_listing' => 'properties#edit_listing'

#Query routes for Properties Page
  get 'properties/newest' => 'properties#newest'

  get 'properties/most_popular' => 'properties#most_popular'

  get 'properties/low_to_high' => 'properties#low_to_high'

  get 'properties/:p_id/zestimate' => 'properties#zestimate'

  post 'properties/:p_id/zestimate' => 'properties#make_zestimate'

  #P_Saved Routes
  post 'p_saveds/search' => 'p_saveds#search'

  get 'p_saveds/saved_searches' => 'p_saveds#saved_searches'

  post 'p_saveds/favorite_property' => 'p_saveds#favorite_property'

  #Property Image Routes
  get 'prop_images' => 'prop_images#index'

  get 'prop_images/:p_id/new' => 'prop_images#new'

  get 'prop_images/edit' => 'prop_images#edit'

  post 'prop_images/:p_id/create' => 'prop_images#create'

  get 'prop_images/:p_id/show' => 'prop_images#show'

  patch 'prop_images/update' => 'prop_images#update'

  post 'properties/:id/favorite' => 'properties#favorite'

  get 'properties/properties_json' => 'properties#properties_json'

  #Agent Routes
  get 'agents/contact_agent' => 'agents#contact_agent'

  post 'agents/create' => 'agents#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
