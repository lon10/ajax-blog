class Article < ActiveRecord::Base
  before_create :assign_rate

  private

  def assign_rate
    self.rate = RateService.rate
  end
end
