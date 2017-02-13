Rails.application.routes.draw do


  get 'pages/president'

  get 'pages/board'

  get 'pages/history'

  get 'pages/announcements'

  get 'pages/discussions'

  get 'pages/offerings'

  get 'pages/neighborhoodwatch'

  get 'pages/servingcommunity'

  get 'pages/documents'

  get 'pages/faq'

  get 'pages/clubtampa'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :posts

  root 'posts#index'

end
