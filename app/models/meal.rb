class Meal < ActiveRecord::Base
  attr_accessible :eating_day, :menu_description
  validate :eating_day_is_date?

  private

  def eating_day_is_date?
    if !eating_day.is_a?(Date)
      errors.add(:eating_day, 'must be a valid date')
    end
  end
end
