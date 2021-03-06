Rails.application.routes.draw do
  root to: 'static#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :ulices
  resources :obszaries
  resources :restauracjes
  resources :typy_pracownikas
  resources :pracownicies
  resources :kliencis
  resources :zamowienias
  resources :produkties
  resources :produkty_na_zamowienius

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
