Rails.application.routes.draw do
  resources :portfoliios

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs
  root to: 'pages#home'
end
