Rails.application.routes.draw do
  root 'pages#home'

  get 'home', 'math', controller: 'pages'
  get 'about', controller: 'pages', path: :home

  # the " path: :method_name " can easily change the link we set in every actions which have the link

end