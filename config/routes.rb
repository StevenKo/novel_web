Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  
  root 'welcome#index'
  get 'apply-writer', to: 'welcome#apply'
  post 'apply-writer', to: 'welcome#apply_create'
end
