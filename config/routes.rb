Rails.application.routes.draw do
  resources :portfoliios,except: [:show]
  get 'c-items', to: 'portfoliios#c'
  get 'portfoliios/:id' ,to: 'portfoliios#show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  root to: 'pages#home'
end
