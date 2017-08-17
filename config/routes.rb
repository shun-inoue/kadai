Rails.application.routes.draw do
  get 'reports/index'
  get 'reports', to: 'reports#index'

  get 'reports/add'
  post 'reports/add', to: 'reports#create'
  
  get 'reports/edit/:id', to: 'reports#edit'
  patch 'reports/edit/:id', to: 'reports#update'

  get 'reports/:id', to: 'reports#show'
  
  
  
  
  get 'divisions/index'
  get 'divisions', to: 'divisions#index'

  get 'divisions/add'
  post 'divisions/add', to: 'divisions#create'

  get 'divisions/:id', to: 'divisions#show'

  get 'divisions/edit/:id', to: 'divisions#edit'
  patch 'divisions/edit/:id', to: 'divisions#update'
  
  get 'divisions/delete/:id', to: 'divisions#delete'

  

  get 'users/index'
  get 'users', to: 'users#index'
  
  get 'users/add'
  post 'users/add', to: 'users#create'
  
  get 'users/:id', to: 'users#show'

get 'users/edit/:id', to: 'users#edit'
patch 'users/edit/:id', to: 'users#update'

get 'users/delete/:id', to: 'users#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
