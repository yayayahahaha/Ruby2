Rails.application.routes.draw do
  root 'pages#home'

  get 'home', 'math', controller: 'pages'
  get 'about', controller: 'pages', path: :home

end