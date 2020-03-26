Rails.application.routes.draw do
  resources :portfoliios,except: [:show]
  get 'portfoliios/:id' ,to: 'portfoliios#show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs
  root to: 'pages#home'
end
