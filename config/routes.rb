Rails.application.routes.draw do
  get 'users/index'
  get 'users/create'
  get 'users/new'
  scope :api do
    scope :v1 do
      resources :users, only: %i[create]
      resources :authentications, only: %i[create]
      resources :entries
    end
  end 
end
