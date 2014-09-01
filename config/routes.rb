Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  
  root 'welcome#index'
  get 'download', to: 'welcome#download'
  get 'apply-writer', to: 'welcome#apply'
  post 'apply-writer', to: 'welcome#apply_create'

  resources :categories do
    collection do 
      get 'recommend'
    end
    resources :novels
  end

end
