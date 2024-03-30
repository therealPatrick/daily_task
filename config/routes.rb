# Rails.application.routes.draw do
#   devise_for :users, controllers: { registrations: "registrations" }
#   resource :accounts

#   ### Changes Start Here ###
#   get 'user/me', to: 'users#me', as: 'my_settings'
#   patch 'user/update_me', to: 'users#update_me', as: 'update_my_settings'
#   get 'user/password', to: 'users#password', as: 'my_password'
#   patch 'user/update_password', to: 'users#update_password', as: 'my_update_password'
#   scope 'account', as: 'account' do
#     resources :users
#   end
#   ### Changes End Here ###

#   get 'activity/mine'
#   get 'activity/feed'

#   root to: 'activity#mine'
# end




Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  get 'user/new'
  get 'user/create'
  get 'user/edit'
  get 'user/update'
  devise_for :users,controllers: {registrations: "registrations"}
  resource :accounts

  get 'user/me', to: 'users#me', as: 'my_settings'
  patch 'user/update_me', to: 'users#update_me', as: 'upload_my_settings'
  get 'user/password', to: 'users#password', as: 'my_password'
  patch 'user/update_password', to: 'users#update_password', as: 'my_update_password'

  scope 'account', as: 'account' do
    resources :users
  end

  get 'activity/mine'
  get 'activity/feed'

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: 'activity#mine'
end
