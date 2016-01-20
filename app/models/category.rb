class Category < ActiveRecord::Base
  has_many :items

  def self.all_names
    all.map{ |category| [category.name, category.id] }
  end
end
