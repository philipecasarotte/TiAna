class Admin::TestimonialsController < Admin::AdminController
  create.wants.html {redirect_to collection_url}
  update.wants.html {redirect_to collection_url}
end
