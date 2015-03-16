Rails.application.routes.draw do
  root 'pages#home'

  get :home, :math, :form, :about, controller: 'pages'

  get :about, controller: 'pages', path: :me

  post :about, controller: :pages

  # the " path: :method_name " can easily change the link we set in every actions which have the link

end