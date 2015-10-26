RSpec.feature 'Home'  do
  describe 'home page' do
    scenario 'should greets us' do
      visit '/'
      expect(current_page).to be_containing('Welcome!')
    end
  end
end