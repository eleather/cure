Cure::Application.routes.draw do
  resources :user_supplements

  resources :supplement_plans

  resources :supplements

  resources :supplement_groups

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end