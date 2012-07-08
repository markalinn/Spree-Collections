Spree::Core::Engine.routes.draw do
  resources :collections
  
  namespace :admin do
    resources :collections
  end
end
