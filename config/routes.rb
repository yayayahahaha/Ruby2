Rails.application.routes.draw do
  root 'pages#home'

  get 'home', 'about', 'math', controller: 'pages'


end