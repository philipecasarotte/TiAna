class Admin::ImagesController < Admin::AdminController
  belongs_to :image_gallery
  
  cache_sweeper :image_gallery_sweeper
  create.wants.html {redirect_to admin_image_gallery_images_path(parent_object)}
  update.wants.html {redirect_to admin_image_gallery_images_path(parent_object)}
  
  include Order
end
