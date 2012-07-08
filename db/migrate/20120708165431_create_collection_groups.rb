class CreateCollectionGroups < ActiveRecord::Migration
  def change
    create_table :spree_collection_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
