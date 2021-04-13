# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

apartments = Apartment.create([
    { address:'420 E 51st St, New York, NY 10022', mo_rent: 6170.00, num_beds: 2, num_baths: 2.00, sq_ft:150000, url: 'https://www.zillow.com/homedetails/420-E-51st-St-New-York-NY-10022/31532394_zpid/?' , group_id: 1},
    { address:'61 E 77th St, New York, NY 10075', mo_rent: 6981.00, num_beds: 1, num_baths: 2.00, sq_ft:49000, url: 'https://www.zillow.com/homedetails/61-E-77th-St-New-York-NY-10075/244840282_zpid/' , group_id: 2}
])

groups = Group.create([
    { name: 'Group 1'},
    { name: 'Group 2'}
])
