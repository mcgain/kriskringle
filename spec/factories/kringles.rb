FactoryGirl.define do
  factory :kringle do
   association :kringlehead, factory: :user
  end
end
