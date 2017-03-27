Rails.application.routes.draw do

  get 'groups/index'

  get 'courses/index'

  get 'courses/create'

  root 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :courses do
      resources :groups
  end

end
