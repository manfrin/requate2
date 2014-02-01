FactoryGirl.define do
  factory :payment do
    cent_amount 100
    association :group
  end 
end