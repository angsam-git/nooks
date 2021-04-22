FactoryBot.define do

  factory :apartment do
  	id { 0 }
    address { "default address" }
    mo_rent { 1.0 }
    num_beds { 1 }
    num_baths { 1 }
    sq_ft { 1 }
    url { "default url" }
    group_id { "default groupid" }
  end

  factory :group do
    id { 1 }
  	name { "default name" }
  end

end