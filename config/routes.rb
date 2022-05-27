Rails.application.routes.draw do
  resources :recibos
  resources :faturas
  devise_for :usuarios
  root to: "faturas#index"
  #devise_for :usuarios, :controllers => { usuarios: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
