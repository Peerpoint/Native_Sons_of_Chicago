Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  
  get 'about', to: 'pages#about'
  get 'blog', to: 'pages#blog'
  get 'projects', to: 'pages#projects'
  get 'terms', to: 'pages#terms'
  get 'privacy', to: 'pages#privacy'
  get 'invest', to: 'pages#invest'
  
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
