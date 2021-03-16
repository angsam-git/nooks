FactoryBot.define do
  factory :Apartment do
    # default values
    address { '...' }
    mo_rent { 0 }
    num_beds { 0 }
    num_baths { 0 }
    sq_ft { 0 }
    url { '...' }
  end
end