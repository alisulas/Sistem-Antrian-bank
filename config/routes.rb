WaiterUp::Application.routes.draw do
  root to: 'static_pages#root'

  resource :user, except: [:destroy]
  resource :provider, except: [:destroy]
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :places, only: [:index, :show, :create] do
      get 'search', on: :collection
    end
    resources :menu_items, only: [:show, :destroy, :create, :update]
    resource :rating, only: [:create]
    resources :comments, only: [:create, :destroy]
    resources :categories
    resources :menus, only: [:create, :update, :destroy]
  end
end
