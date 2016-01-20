FactoryGirl.define do
  factory :item, class: 'Item' do
    name            'Stone of Jordan'
    price           4999
    quantity        10
    shelf_life_days 30
    category
  end
end
