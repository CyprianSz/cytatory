Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  resources :quotes do 
    resources :comments
  end
  #get '/home',    to: 'static_pages#home'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/help',    to: 'static_pages#help'
  get '/rules',   to: 'static_pages#rules'
  get '/signup',  to: 'users#new'
end
