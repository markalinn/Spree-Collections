class AddPositionToSpreeCollections < ActiveRecord::Migration
  def change
    add_column :spree_collections, :position, :integer
  end
end
