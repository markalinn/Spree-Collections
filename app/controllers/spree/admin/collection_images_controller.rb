module Spree
  module Admin
    class CollectionImagesController < ResourceController
      before_filter :load_data
      create.before :set_viewable
      update.before :set_viewable
      destroy.before :destroy_before

      def index
        @collection_images = @collection.collection_images.all
      end
      
      def update_positions
        params[:positions].each do |id, index|
          CollectionImage.update_all(['position=?', index], ['id=?', id])
        end
    
        respond_to do |format|
          format.js  { render :text => 'Ok' }
        end
      end
      
      private
      
      def load_data
        @collection = Collection.find(params[:collection_id])
      end

      def location_after_save
        admin_collection_collection_images_url(@collection)
      end

      def set_viewable
        @collection_image.viewable = @collection
      end

      def destroy_before
        @viewable = @collection_image.viewable
      end
      
    end
  end
end
