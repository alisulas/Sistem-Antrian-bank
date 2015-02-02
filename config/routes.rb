Rails.application.routes.draw do
  root to: 'users#show'

  resource :user, except: [:destroy]
  resource :session, only: [:new, :create, :destroy]

end
