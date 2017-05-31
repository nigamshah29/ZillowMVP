Rails.application.routes.draw do
  root 'properties#homepage'

  #Users Routes

  get 'users' => 'users#index' #delete?

  get 'users/user_profile' => 'users#user_profile'

  post '/register' => 'users#register' #convert to SessionController

  get 'users/welcome' => 'users#welcome'

  post '/login' => 'users#login' #convert to SessionController

  get '/logout' => 'users#logout' #convert to SessionController 

  #Properties Routes

  get 'properties/homepage' => 'properties#homepage'

  get 'properties/show' => 'properties#show'

  get 'properties/list_property' => 'properties#list_property'

  post 'properties/hold_data' => 'properties#hold_property_data'

  get 'properties/confirm_property' => 'properties#confirm_property'

  post 'properties/create' => 'properties#create'

  post 'properties/search' => 'properties#search'

  get 'properties/contact_seller' => 'properties#contact_seller'

  get 'properties/edit' => 'properties#edit'

  patch 'properties/:id/update' => 'properties#update'

  get 'properties/zestimate' => 'properties#zestimate'

  #P_Saved Routes

  post 'p_saveds/save_search' => 'p_saveds#save_search'

  post 'p_saveds/favorite_property' => 'p_saveds#favorite_property'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
