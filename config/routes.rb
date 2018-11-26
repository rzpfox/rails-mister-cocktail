Rails.application.routes.draw do
  devise_for :users
  root to: "cocktails#index"
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  get 'doses/new'
  get 'doses/create'
  get 'doses/delete'
  resources :cocktails do
    resources :doses, shallow: true
  end
end
