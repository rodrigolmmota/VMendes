Vmendes::Application.routes.draw do
  resources :enderecos

  resources :profissionals

  resources :clientes

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  
end
