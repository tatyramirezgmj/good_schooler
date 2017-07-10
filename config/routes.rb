Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  get 'home/index2'
end
