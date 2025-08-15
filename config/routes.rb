Rails.application.routes.draw do
  root to: 'lists#index'
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  resources :lists, only: [:index, :show, :new, :create ] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end
