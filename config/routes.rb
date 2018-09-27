Rails.application.routes.draw do
  get 'home/index'
  resources :patient_summary, only: [:show]
  resources :patients, except: :show
  
  root 'home#index'
end
