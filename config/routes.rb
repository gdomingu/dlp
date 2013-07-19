Dlp::Application.routes.draw do

  get "welcome/index"
  get "welcome/about"

  match '/admin/jobs/:id/worker_profiles' => 'admin/jobs#worker_profiles', :as => :admin_job_workers

  # resources :identifications


  # resources :items


  # resources :reviews


  # resources :wages


  resources :jobs


  resources :employer_profiles


  # resources :dues


  # resources :referrals


  root :to => 'welcome#index'
  resources :worker_profiles


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  ActiveAdmin.routes(self)




end
