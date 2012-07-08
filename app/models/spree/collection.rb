module Spree
  class Collection < ActiveRecord::Base
    has_many :collection_images, :as => :viewable, :order => :position, :dependent => :destroy
  end
end