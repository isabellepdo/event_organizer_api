Rails.application.routes.draw do
  resources :lectures
  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'events/:id/organizer_event', to: 'events#organizer_event', as: :organizer_event
end
