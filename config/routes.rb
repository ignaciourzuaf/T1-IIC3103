Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :entries do
    resources :comments
  end
  namespace :api , defaults: {format: 'json'} do
    namespace :v1 do
      resources :entries
      resources :comments
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
