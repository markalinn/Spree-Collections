module Spree
  class CollectionGroup < ActiveRecord::Base
    has_many :collections
  end
end
