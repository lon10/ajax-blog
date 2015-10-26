module Pages
  module PageFactory
    def current_page
      current_page_class = ObjectSpace.each_object(Class).find do |page_class|
        page_class < PageBase && page_class.matches?(page)
      end
      if current_page_class.nil?
        #:nocov:
        fail "Unable to find matching page object for path: #{page.current_path}"
        #:nocov:
      else
        current_page_class.new(page)
      end
    end
  end
end
