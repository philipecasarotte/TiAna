class ImageSweeper < ActionController::Caching::Sweeper
  observe Image

  def clear_page_cache(page)
    expire_page('/index')
    dirs = %w{ photos }
    sweep_directory(dirs)
  end

end