Mergecap::Application.routes.draw do
  resources :members
  resources :projects
  resources :project_members, only: [:create, :destroy, :index]
  resources :users do
    get 'repositories'
  end
  resources :teams do
    resources :projects
    resources :dashboard
  end

  root :to => 'teams#dashboard'

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
end
