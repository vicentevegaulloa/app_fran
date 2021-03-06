Rails.application.routes.draw do
  resources :comments
  get 'match_users/index'
  get 'match_users/new'
  get 'match_users/create'
  get 'match_users/show'
  get 'match_users/edit'
  get 'match_users/update'
  get 'match_users/destroy'
  get 'local_users/index'
  get 'local_users/new'
  get 'local_users/create'
  get 'local_users/show'
  get 'local_users/edit'
  get 'local_users/update'
  get 'local_users/destroy'
  resources :locals
  devise_for :local_users, :path_prefix => 'my'
  devise_for :match_users, :path_prefix => 'my'
  resources :local_users
  resources :match_users
  root 'static_pages#home'
  get '/login' ,to: 'static_pages#login'
  get '/match_home' ,to: 'match_app#match_home'
  get '/match_perfil' ,to: 'match_app#match_perfil'
  get '/match_match' ,to: 'match_app#match_match'
  get '/match_locales' ,to: 'match_app#match_locales'
  get '/match_inbox' ,to: 'match_app#match_inbox'
  get '/local_home' ,to: 'local_app#local_home'
  get '/local_locales' ,to: 'local_app#local_locales'
  get '/local_mi_local' ,to: 'local_app#local_mi_local'
  get '/local_muro' ,to: 'local_app#local_muro'
end
