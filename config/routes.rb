Rails.application.routes.draw do

  resources :winners, :only => [:index,:create, :show]
  resources :competitors
  get '/towns', to: 'towns#index'
 
  root to: 'competitors#new'
end
