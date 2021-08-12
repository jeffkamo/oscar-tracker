Rails.application.routes.draw do
  root 'journal#index'
  get 'journal/new', to: 'journal#new'
  get 'journal/:id/edit', to: 'journal#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
