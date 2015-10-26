RSpec.feature 'Articles page'  do
  describe 'Articles interaction' do
    let!(:articles) do
      5.times.collect do
        FactoryGirl.create(:article, :named)
      end
    end

    before do
      visit '/articles'
    end

    scenario 'should display all articles' do
      articles.each do |article|
        expect(current_page.contains_article?(article)).to be_truthy
      end
    end
  end
end
