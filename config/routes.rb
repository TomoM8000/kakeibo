Rails.application.routes.draw do
  root to: 'items#index'
  resources :items, only: [:new, :create, :edit, :update, :destroy] do
    resources :categories, only: [:create, :edit, :update, :destroy]
    resources :places,     only: [:create, :edit, :update, :destroy]
  end

end
