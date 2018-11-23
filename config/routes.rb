Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  get 'doses/new'
  get 'doses/create'
  get 'doses/delete'
  resources :cocktails do
    resources :doses
  end
end
