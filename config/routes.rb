Rails.application.routes.draw do
  root 'users#index'

  post 'save_search' => 'p_saveds#save_search'

  post 'favorite_property' => 'p_saveds#favorite_property'

  get 'homepage' => 'properties#homepage'

  get 'list_property' => 'properties#list_property'

  post 'hold_property_data' => 'properties#hold_property_data'

  get 'confirm_property' => 'properties#confirm_property'

  post 'search' => 'properties#search'

  get 'contact_seller' => 'properties#contact_seller'

  get 'edit_listing' => 'properties#edit_listing'

  patch 'update_listing' => 'properties#update_listing'

  get 'zestimate' => 'properties#zestimate'

  get 'welcome' => 'users#welcome'

  get 'my_listings' => 'users#my_listings'

  post 'login' => 'users#login'

  get 'logout' => 'users#logout'

  post 'register' => 'users#register'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
