Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  
  get 'jobs', to: 'welcome#jobs'
  root 'welcome#index'
  get 'download', to: 'welcome#download'
  get 'apply-writer', to: 'welcome#apply'
  post 'apply-writer', to: 'welcome#apply_create'

  get 'categories/recommend(/:category)', to: 'categories#recommend', as: 'recommend'
  get 'categories/recent', to: 'categories#recent', as: 'recent'
  get 'categories/newest', to: 'categories#newest', as: 'newest'

  resources :categories,only: ["index","show"] do
    resources :novels, only: ["show"]
  end

  resources :novels, only: [] do
    resources :articles, only: ['show']
  end

  get 'search', to: 'novels#search'

end
