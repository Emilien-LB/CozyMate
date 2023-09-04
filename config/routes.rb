Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/ranking', to: 'pages#ranking'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :tasks
  resources :scheduled_tasks, only: [:index, :update, :edit]
  resources :events
end
