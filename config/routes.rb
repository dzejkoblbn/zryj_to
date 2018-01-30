Rails.application.routes.draw do
  resources :ulices
  resources :obszaries
  resources :restauracjes
  resources :typy_pracownikas
  resources :pracownicies
  resources :kliencis
  resources :zamowienias
  resources :produkties
  resources :produkty_na_zamowienius
  root to: 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
