Rails.application.routes.draw do
  devise_for :users,controllers: {registrations: "registrations"}
  resource :accounts

  get 'activity/mine'
  get 'activity/feed'

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: 'activity#mine'
end
