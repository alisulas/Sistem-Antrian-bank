WaiterUp::Application.routes.draw do
  root to: 'static_pages#root'

  resource :user, except: [:destroy]
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :places, only: [:index, :show, :create]
  end
end
