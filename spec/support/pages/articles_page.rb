module Pages
  class ArticlesPage < PageBase
    def self.matches?(page)
      page.title.strip == 'Articles'
    end

    def contains_article?(article)
      displaying_article = @page.find("#article_#{article.id}").text

      # TODO: wtf...
      expectations = [article.title, article.category, article.author, article.rate.to_s]
      expectations.map { |exp| displaying_article.include?(exp) }.exclude?(false)
    end
  end
end
