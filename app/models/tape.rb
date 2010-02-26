class Tape < ActiveRecord::Base
  has_attached_file :photo,
                    :styles => {
                      :thumb => "180x180>"
                    },
                    :url => "tapes/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/images/tapes/:id/:style/:basename.:extension"
  validates_presence_of :title#, :image_url
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 1.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  #validates_format_of :image_url, :with => /\.(gif|jpg|png)$/i, :message => "must be a URL for GIF, JPG or PNG image."
  
end
