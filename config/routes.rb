Dlp::Application.routes.draw do



  # resources :dues


  # resources :referrals


  root :to => 'worker_profiles#index'
  resources :worker_profiles


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  ActiveAdmin.routes(self)




end
