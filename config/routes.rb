Rails.application.routes.draw do
  resources :news do
    resources :comments
    member do
      get 'show_and_new_comment', to: 'news#show_and_new_comment', as: 'show_and_new_comment'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "news#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end
