class Item < ActiveRecord::Base
  belongs_to :category

  def expires
    Date.today + shelf_life_days.days
  end

  def price_to_us_dollars
    Money.us_dollar(price)
  end
end
