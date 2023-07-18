Rails.application.routes.draw do
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/create'
  # get 'posts/edit'
  # get 'posts/update'
  # get 'posts/destroy'
  root 'homes#index'
  # devise_for :clients, :controllers => {registrations: 'clients/registrations'}
  devise_for :clients
  devise_for :trainers
  devise_for :users

  # devise_for :users
  
  resources :homes
  resources :posts



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
