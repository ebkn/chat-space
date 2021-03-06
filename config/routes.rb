Rails.application.routes.draw do
  devise_for :users
  resources :groups, only: %i[new create edit update show] do
    resources :messages, only: %i[index new create]
  end
  resources :users, only: [] do
    collection do
      get 'search'
    end
  end
  root 'messages#index'
end
