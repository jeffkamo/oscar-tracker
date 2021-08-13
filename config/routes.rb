Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'journal_entries#index'
  resources :journal_entries, only: [:new, :edit, :create, :update, :destroy]
  resources :food, only: [:index, :new, :edit, :create, :update, :destroy]
  resources :brand, only: [:index, :new, :edit, :create, :update, :destroy]
end
