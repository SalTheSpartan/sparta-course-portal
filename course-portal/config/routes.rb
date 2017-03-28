Rails.application.routes.draw do

  get 'lessons/index'

  get 'lessons/show'

  get 'lessons/delete'

  get 'lessons/new'

  get 'syllabi/index'

  get 'syllabi/show'

  get 'syllabi/delete'

  get 'syllabi/new'

  get 'syllabi/edit'

  get 'syllabi/update'

  get 'groups/index'

  get 'courses/index'

  get 'courses/create'

  root 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :courses
  resources :groups


end
