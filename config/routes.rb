Rails.application.routes.draw do
  resources :saidas
  resources :entradas
  devise_for :users
end
