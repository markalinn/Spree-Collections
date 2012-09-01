module Spree
  class Collection < ActiveRecord::Base
    belongs_to :collection_group
    has_many :collection_images, :as => :viewable, :order => :position, :dependent => :destroy
    validates_presence_of :name #, :collection_group_id
    validates_uniqueness_of :name #, :scope => [:collection_group_id]

    default_scope :order => 'position'
    
    attr_accessible :name, :description
  end
end