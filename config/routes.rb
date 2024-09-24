Rails.application.routes.draw do
  get 'welcome/index'
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      resources :authentications, only: [:create]
      resources :entries

      get 'welcome', to: 'welcome#index'
    end
  end
end
