Poolt::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :projects
  resources :sessions

  root to: 'application#index'

end
