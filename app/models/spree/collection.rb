module Spree
  class Collection < ActiveRecord::Base
    belongs_to :collection_group
    has_many :collection_images, :as => :viewable, :order => :position, :dependent => :destroy
  end
end