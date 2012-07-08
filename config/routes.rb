Spree::Core::Engine.routes.draw do
  resources :collections
  
  namespace :admin do
    resources :collections
    resources :collection_images
    resources :collection_groups
  end
end
