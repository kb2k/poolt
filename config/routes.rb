Poolt::Application.routes.draw do

  resources :projects

  root to: 'application#index'

end
