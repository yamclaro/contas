Rails.application.routes.draw do
  resources :homes
  resources :categoria
  devise_for :users 
  #resources :saidas
  resources :entradas
  #devise_for :users
end
