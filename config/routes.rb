Rails.application.routes.draw do
  get root :to => 'home#index'

  # コールバック用URL
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # ログアウト用
  devise_scope :user do
    delete :sign_out, to: 'devise/sessions#destroy', as: :destroy_user_session
  end
end
