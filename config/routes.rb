Spree::Core::Engine.routes.draw do
  resources :collections
  
  namespace :admin do
    resources :collections do
      resources :collection_images do
        collection do
          post :update_positions
        end
      end
    end
    resources :collection_groups
  end
end
