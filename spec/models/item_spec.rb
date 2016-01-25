require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "associations" do
    it { is_expected.to belong_to(:category) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_presence_of(:shelf_life_days) }
  end

  describe ".current_items" do
    let!(:current_item) { create(:item) }
    let!(:expired_item) { create(:item, shelf_life_days: -5) }
    it "should include active items and exclude expired items" do
      expect(Item.current_items).to include(current_item)
      expect(Item.current_items).not_to include(expired_item)
    end
  end

  describe "#price_in_us_dollars" do
    let(:item) { create(:item) }
    it "should return price formatted as US Dollars" do
      expect(item.price_in_us_dollars).to eq(Money.us_dollar(item.price))
    end
  end
end
