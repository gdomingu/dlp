Dlp::Application.routes.draw do
  resources :search_suggestions

  devise_for :users, :controllers => {sessions: 'sessions'}
  root :to => 'welcome#index'
  resources :worker_profiles

  get "/new_moving_job" => "jobs#new_moving_job", as: :new_moving_job
  get "/new_painting_job" => "jobs#new_painting_job", as: :new_painting_job
  get "/new_gardening_job" => "jobs#new_gardening_job", as: :new_gardening_job
  get "/new_other_job" => "jobs#new_other_job", as: :new_other_job

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  ActiveAdmin.routes(self)

  match '/jobs/:id/jobdispatch' => 'jobs#jobdispatch', :as => :job_jobdispatch
  match '/jobs/:id/addworker/:id' => 'jobs#addworker', :as => :job_addworker

  resources :users, :only => [:show]
  match "welcome/about" => "welcome#about", :as => :about
  match "welcome/contact" => "welcome#contact", :as => :contact
  match "welcome/faq" => "welcome#faq", :as => :faq
  match "welcome/howtohire" => "welcome#howtohire", :as => :howtohire

  match '/admin/jobs/:id/worker_profiles' => 'admin/jobs#worker_profiles', :as => :admin_job_workers

  # resources :identifications


  # resources :items

  # resources :reviews


  # resources :wages


  resources :jobs


  resources :employer_profiles


  # resources :dues


  # resources :referrals






end
