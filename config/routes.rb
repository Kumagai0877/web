Rails.application.routes.draw do
  get root :to => 'home#index'

  # コールバック用URL
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
