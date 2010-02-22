class Tape < ActiveRecord::Base
  validates_presence_of :title, :image_url
  validates_format_of :image_url, :with => /\.(gif|jpg|png)$/i, :message => "must be a URL for GIF, JPG or PNG image."
end
