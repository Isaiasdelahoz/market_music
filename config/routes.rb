Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :advertisements, only: [:index, :show, :create, :new]
  resources :categories, only: [:index, :show, :create, :new, :update, :destroy, :edit]
end
