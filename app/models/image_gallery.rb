class ImageGallery < ActiveRecord::Base
  validates_presence_of :name
  
  has_many :images
  
  has_permalink :name
  acts_as_seo
  
  default_scope :order => "position, id DESC"
end
