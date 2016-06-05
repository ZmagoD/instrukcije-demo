Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :instructors
  devise_for :users
  root to: 'dashboard#index'
  resources :instructors do
    resources :instructions, except: :index
  end
  resources :instruction_termins, only: :index
  post '/take_instruction_termin/:instruction_id' => 'instruction_termins#create', as: :take_instruction_termin
end
