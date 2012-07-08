class CreateCollections < ActiveRecord::Migration
  def change
    create_table :spree_collections do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
