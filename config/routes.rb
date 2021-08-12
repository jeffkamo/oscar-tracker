Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'journal#index'
  get 'journal/new', to: 'journal#new'
  get 'journal/:id/edit', to: 'journal#edit'

  resources :journal_entries, only: [:create, :update, :destroy]
end
