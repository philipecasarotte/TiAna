class PageSweeper < ActionController::Caching::Sweeper
  observe Page

  def after_save(page)
    clear_page_cache(page)
  end

  def after_destroy(page)
    clear_page_cache(page)
  end

  def clear_page_cache(page)
    expire_page('/index')
    dirs = %w{ pages }
    sweep_directory(dirs)
  end

end
