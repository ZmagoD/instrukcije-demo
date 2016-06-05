Rails.application.routes.draw do
  devise_for :instructors
  
  
  resources :instructors do
    resources :instructions, except: :index
  end
  devise_for :users
  root to: 'dashboard#index'

end
