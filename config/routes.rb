Rails.application.routes.draw do
  resources :comment_comments
  resources :post_comments
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :filiations
  resources :ride_participants
  resources :booking_participants
  resources :questionnaire_answers
  resources :questionnaire_questions
  resources :questionnaires
  resources :rides
  resources :vehicles
  resources :vehicle_fuels
  resources :vehicle_models
  resources :vehicle_brands
  resources :vehicle_categories
  resources :edition_items
  resources :items
  resources :reactions
  resources :comments
  resources :booking_posts
  resources :edition_posts
  resources :event_posts
  resources :posts
  resources :bookings
  resources :participants
  resources :editions
  resources :personal_restrictions
  resources :restrictions
  resources :people
  resources :locations
  resources :addresses
  resources :countries
  resources :location_sub_categories
  resources :location_categories
  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
