Dlp::Application.routes.draw do

  resources :photos


  resources :worker_profiles


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  ActiveAdmin.routes(self)

  root :to => 'welcome#index'


end
