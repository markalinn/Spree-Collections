module Spree
  class CollectionImage < Asset
    default_scope :order => 'position'
      
    validate :no_attachment_errors
    has_attached_file :attachment,
                      :styles => { :mini => '48x48>', :small => '75x150>', :medium => '303x606>', :large => '940x1880>' },
                      :default_style => :medium,
                      :url => '/spree/collection_images/:id/:style/:basename.:extension',
                      :path => ':rails_root/public/spree/collection_images/:id/:style/:basename.:extension'

    # save the w,h of the original image (from which others can be calculated)
    # we need to look at the write-queue for images which have not been saved yet
    after_post_process :find_dimensions

    def find_dimensions
      temporary = attachment.queued_for_write[:original]
      filename = temporary.path unless temporary.nil?
      filename = attachment.path if filename.blank?
      geometry = Paperclip::Geometry.from_file(filename)
      self.attachment_width  = geometry.width
      self.attachment_height = geometry.height
    end

    # if there are errors from the plugin, then add a more meaningful message
    def no_attachment_errors
      unless attachment.errors.empty?
        # uncomment this to get rid of the less-than-useful interrim messages
        # errors.clear
        errors.add :attachment, "Paperclip returned errors for file '#{attachment_file_name}' - check ImageMagick installation or image source file."
        false
      end
    end
  end
end
