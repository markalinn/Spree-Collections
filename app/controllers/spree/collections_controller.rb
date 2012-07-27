module Spree
  class CollectionsController < Spree::BaseController
    def index
      @collections = Collection.all
    end
    
    def show
      @collection = Collection.find(params[:id])
      @collection_images = @collection.collection_images.all
    end
  end
end
