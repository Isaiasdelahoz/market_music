Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "categories#index"

  resources :advertisements, only: [:index, :show, :create, :new, :edit, :destroy, :update]
  resources :categories, only: [:index, :show, :create, :new, :update, :destroy, :edit]
end
