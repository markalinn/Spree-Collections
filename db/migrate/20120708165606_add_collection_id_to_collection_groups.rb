class AddCollectionIdToCollectionGroups < ActiveRecord::Migration
  def change
    add_column :spree_collections, :collection_group_id, :integer
  end
end
