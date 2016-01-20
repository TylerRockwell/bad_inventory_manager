class Item < ActiveRecord::Base
  belongs_to :category

  validates :name,            presence: true
  validates :price,           presence: true
  validates :quantity,        presence: true
  validates :shelf_life_days, presence: true

  def expires
    Date.today + shelf_life_days.days
  end

  def self.current_items
    select{ |item| item.expires > Date.today }
  end

  def price_in_us_dollars
    Money.us_dollar(price)
  end
end
