Rails.application.routes.draw do
  resources :hwahae_orders
  resources :hwahae_carts
  resources :hwahae_coupons
  resources :hwahae_comments
  resources :hwahae_contents
  resources :rank_pages
  resources :pages
  resources :product_reviews
  resources :requests
  resources :events
  resources :ingredients
  devise_for :users
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/home_page", to: "pages#home_page"
  get "/my_page", to: "pages#my_page"
  get "/my_point_page", to: "pages#my_point_page"	
  get "/ingredient_page", to: "pages#ingredient_page"	
	
  get "/cart", to: "products#cart"
 # post "/hwahae_comments", to: "hwahae_comments#create"
  root 'pages#home_page'
end
