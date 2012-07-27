module Spree
  class CollectionsController < Spree::BaseController
    def index
      @collections = Collection.all
    end
  end
end
