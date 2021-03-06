Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'characters/index'
      get 'characters/show'
    end
  end
  namespace :api do
    namespace :v1 do
      resources :characters, only: [:index, :show, :create]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :films, only: [:index, :show, :create]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
