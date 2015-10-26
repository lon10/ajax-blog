module Pages
  class HomePage < PageBase
    def self.matches?(page)
      page.title.strip == 'AjaxBlog'
    end
  end
end
