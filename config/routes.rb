Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      devise_scope :user do
        post 'sessions' => 'sessions#create', :as => 'login'
        post 'registrations' => 'registrations#create', :as => 'register'
        delete 'sessions' => 'sessions#destroy', :as => 'logout'
      end
      get 'tasks' => 'tasks#index', :as => 'tasks'
    end
  end
end
