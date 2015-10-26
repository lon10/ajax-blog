RSpec.feature 'Home page'  do
  describe 'application greetings' do
    scenario 'should greets us' do
      visit '/'
      expect(current_page).to be_containing('Welcome!')
    end
  end
end
