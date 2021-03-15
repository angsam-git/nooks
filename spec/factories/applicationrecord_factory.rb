FactoryBot.define do
  factory :ApplicationRecord do
    address { '...' } # default values
    rent { 0 }
    bed { 0 }
    bath { 0 }
    sqft { 0 }
  end
end