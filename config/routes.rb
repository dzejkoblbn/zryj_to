Rails.application.routes.draw do
  resources :klienci
  resources :produkty
  resources :produkty_na_zamowieniu
  resources :zamowienia
  resources :typy_pracownika
  resources :pracownicy
  resources :ulice
  resources :obszary
  resources :restauracje
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
