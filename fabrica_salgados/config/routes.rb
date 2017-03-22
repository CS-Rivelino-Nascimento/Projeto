Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  resources :vendas
  resources :produtos
  resources :despesas
  resources :materia_primas
  resources :enderecos
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
