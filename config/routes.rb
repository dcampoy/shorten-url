Rails.application.routes.draw do
  resources :urls, only: [:show, :create, :destroy]
  get 'r/:code', to: 'redirect#show'
  root 'urls#new'
end
