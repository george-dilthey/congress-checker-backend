Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :sessions, only: [:create]
  get "/me", to: 'sessions#autoLogin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :members, param: :mid
      resources :roles
      resources :bills
      resources :checklists

    end
  end
end
