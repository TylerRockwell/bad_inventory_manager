require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "associations" do
    it { is_expected.to have_many(:items) }
  end

  describe ".all_names" do
    let!(:category) { create(:category) }
    it "should return a nested arrays of category names and ids" do
      expect(Category.all_names).to eq([[category.name, category.id]])
    end
  end
end
