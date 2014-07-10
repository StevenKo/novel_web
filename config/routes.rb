Rails.application.routes.draw do
  root 'welcome#index'
  get 'apply-writer', to: 'welcome#apply'
  post 'apply-writer', to: 'welcome#apply_create'
end
