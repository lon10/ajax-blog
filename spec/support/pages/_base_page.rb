module Pages
  class PageBase
    extend Forwardable

    attr_reader :page

    def_delegators :page, :page_title, :current_path

    def initialize(page)
      @page = page
    end

    def containing?(content)
      @page.has_content?(content)
    end
  end
end
