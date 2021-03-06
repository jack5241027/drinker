Rails.application.routes.draw do
  resources :drink_shops
  resources :menus do
    resources :orders
    get :unpaid
  end

  get "/rank" => "pages#rank"
  get "/users/profile" => "users/profile#profile"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/oauth_callbacks" }

  root "pages#index"
end
