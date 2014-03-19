Poolt::Application.routes.draw do

  get "sessions/create"
  get "sessions/index"
  resources :projects

  root to: 'application#index'

end
