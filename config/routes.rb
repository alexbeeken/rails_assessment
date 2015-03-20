Rails.application.routes.draw do :products
  root :to => 'posts#index'
  resources :posts
end
