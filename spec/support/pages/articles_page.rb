module Pages
  class ArticlesPage < PageBase
    def self.matches?(page)
      page.title.strip == 'Articles'
    end

    def contains_article?(article)
      displaying_article = @page.find("#article_#{article.id}").text

      #TODO: wtf...
      displaying_article.include?(article.title) and
      displaying_article.include?(article.category) and
      displaying_article.include?(article.author) and
      displaying_article.include?(article.rate.to_s)
    end
  end
end
