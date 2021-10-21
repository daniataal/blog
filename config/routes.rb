Rails.application.routes.draw do
  resources :cars
  resources :posts
  devise_for :users
  resources :users

  get 'cars', to:'home#cars'
  get 'homepage', to: 'home#homepage'
  get 'dashboard', to: 'home#dashboard'
  get 'welcome/index'

   resources :articles  do
     resources :comments
end

root 'home#homepage'
end
