Rails.application.routes.draw do
  root to: "pages#home"

  get 'shop', to: 'pages#shop'
  get 'mix&match', to: 'pages#mix&match'
  get 'collections', to: 'pages#collections'
  get 'stockists', to: 'pages#stockists'
  get 'about', to: 'pages#about'

  resources :products, only: [:index, :show, :create, :new, :edit, :update, :destroy]
  resources :orders, only: [:index, :show, :create, :new, :edit, :update, :destroy]
  resources :collections, only: [:index, :show, :create, :new, :edit, :update, :destroy]
  resources :types, only: [:create, :new, :edit, :update, :destroy]
  resources :colors, only: [:create, :new, :edit, :update, :destroy]
  resources :photos, only: [:create, :new, :edit, :update, :destroy]
  resources :pouches, only: [:create, :new, :edit, :update, :destroy]
  resources :accessories, only: [:create, :new, :edit, :update, :destroy]
  resources :bags, only: [:create, :new, :edit, :update, :destroy]
  resources :straps, only: [:create, :new, :edit, :update, :destroy]
end
