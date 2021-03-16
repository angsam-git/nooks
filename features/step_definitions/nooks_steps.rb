
Given /the following apartments exist/ do |apartments_table|
    apartments_table.hashes.each do |apartment|
        Apartment.create apartment
    end
end

Then /I should see all the apartments/ do
    Apartment.all.each do |apartment|
        step %{I should see "#{apartment.address}"}
    end
end