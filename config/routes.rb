Rails.application.routes.draw do
  
  resources :displays
  devise_for :users
  resources :cart_items
  resources :hair_products

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
