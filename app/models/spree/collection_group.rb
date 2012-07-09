module Spree
  class CollectionGroup < ActiveRecord::Base
    has_many :collections
    validates_presence_of :name
    validates_uniqueness_of :name
  end
end
