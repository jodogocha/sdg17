Rails.application.routes.draw do
  resources :tpersonas 
  resources :audit
  get 'audit/index'
  get 'audit/:id', to: 'audit#show', as: 'audit_change'
  resources :esummaries
  mount Ckeditor::Engine => '/ckeditor'
  resources :resolutions
  resources :resolutions_types do
    get :autocomplete_resolutions_type_nombre, on: :collection
  end
  resources :records
  resources :people do
      get :autocomplete_person_ruc_ci, :on =>:collection
  end
  resources :histories
  resources :clasifications
  resources :states
  resources :dependencies
  resources :crm
  devise_for :users
  resources :users
  resources :roles
  get 'welcome/index'
  root :to => 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
