Poolt::Application.routes.draw do

  resources :projects
  resources :sessions

  root to: 'application#index'

end
