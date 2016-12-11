Rails.application.routes.draw do
  resources :items do
   	resource :like, module: :items
   	resource :commit, module: :items
  end
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users, :controllers => "users_controller.rb"

  
  root to: "items#index"
  
end
