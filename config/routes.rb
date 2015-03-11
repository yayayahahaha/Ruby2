Rails.application.routes.draw do
  get 'pages', to: 'pages#home'

	get 'pages/home'

  get 'pages/about'

	root 'pages#home'


end
