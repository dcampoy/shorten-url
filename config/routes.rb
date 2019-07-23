Rails.application.routes.draw do
  resources :urls
  get 'r/:code', to: 'redirect#show'
  root 'urls#new'
end
