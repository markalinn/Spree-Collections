module Spree
  module Admin
    class CollectionsController < ResourceController
      before_filter :load_collection_groups, :except => ['index', 'update_positions']
    
      def update_positions
        params[:positions].each do |id, index|
          Collection.update_all(['position=?', index], ['id=?', id])
        end
    
        respond_to do |format|
          format.js  { render :text => 'Ok' }
        end
      end

      private
        def load_collection_groups
          @collection_groups = CollectionGroup.all(:order => 'name')
        end
    end
  end
end
