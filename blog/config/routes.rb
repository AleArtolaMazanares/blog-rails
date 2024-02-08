Rails.application.routes.draw do
  get 'contents/index'
  root 'home#index'
  devise_for :users

  resources :contents

end
