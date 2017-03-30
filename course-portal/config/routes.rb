Rails.application.routes.draw do

  devise_for :users

  get '/groups/list', to: 'groups#list'
  

  root 'courses#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :courses
  resources :groups
  resources :syllabi
  resources :lessons

end
