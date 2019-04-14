Rails.application.routes.draw do
  resources :comments
  devise_for :users
  get 'welcome/index'

  resources :articles
  
  root 'welcome#index'
end
