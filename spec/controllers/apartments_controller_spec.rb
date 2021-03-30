require 'rails_helper'

describe ApartmentsController, type: :controller do
	describe "Apartments" do
		
		let!(:apt1) { FactoryBot.create(:Apartment, address: '4 E 51st St, New York, NY 10022', rent: 6170.0, beds: 2, bath: 2, sqft: 150000, groupid: "id1") }
		let!(:apt2) { FactoryBot.create(:Apartment, address: '61 E 77st St, New York, NY 10075', rent: 6981.0, beds: 1, bath: 2, sqft: 49000, groupid: "id2") }


	    context 'A group created a new group id'
			it 'there should exist a corresponding route' do
				expect(get("/id1")).to route_to("pages#id1")
			end

			it 'invalid id\'s should not receive a route' do
  				visit("/invalid")
  				expect(page.status_code).to be(404)
			end

			it 'each group should only see their own listings, not other groups\' listings' do
				visit("/id1")
	        	expect(page).to have_content(apt1.title)
	        	expect(page).not_to have_content(apt2.title)
			end
		end

		context 'An apartment listing has been added to the DB' do
	      	it 'should appear on the apartments page' do
	      		visit("/apartments")
	        	expect(page).to have_content(apt1.title)
	        	expect(page).to have_content(apt2.title)
	      	end
	    end

	end
end
