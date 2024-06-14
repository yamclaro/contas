Rails.application.routes.draw do
  resources :categoria
  devise_for :users 
  #resources :saidas
  resources :entradas
  #devise_for :users
end
