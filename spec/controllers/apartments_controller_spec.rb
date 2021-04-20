require 'rails_helper'

describe ApartmentsController, type: :controller do
    describe "Apartments" do
  
        let!(:group1) { FactoryBot.create(:group, id: 0, name: "id1") }

        let!(:apt1) { FactoryBot.create(:apartment, id: 0, address: '4 E 51st St, New York, NY 10022', mo_rent: 6170.0, num_beds: 2, num_baths: 2, sq_ft: 150000, url: 'www.streateasy.com', group_id: group1.id) }
        let!(:apt2) { FactoryBot.create(:apartment, id: 1, address: '61 E 77st St, New York, NY 10075', mo_rent: 6981.0, num_beds: 1, num_baths: 2, sq_ft: 49000, url: 'www.streateasy.com', group_id: group1.id) }


        context 'debugging' do
            it 'trivial tests' do
                expect(apt1.address).to eql('4 E 51st St, New York, NY 10022')
                expect(apt2.num_beds).to eql(1)
                expect(apt1.id).to eql(0)
            end
        end


        # context 'test homepage' do
        #     it '...' do
        #         get :home
        #         # get "/"
        #         expect(response).to render_template(‘index’)
        #         # expect(get("/")).to route_to("pages#home")
        #     end
        # end


        # context 'A group created a new group id' do
        #     it 'there should exist a corresponding route' do
        #         # get :index
        #         get :edit, :id => apt1.id
        #         expect(response).to render_template(‘index’)
        #         # expect(get("groups/#{apt1.group_id}/apartments")).to route_to("pages#id1")
        #         # expect(get("/id1")).to route_to("pages#id1")
        #         # expect(get('apartments/index/id1')).to route_to("pages#id1")
        #         # expect(get("groups/#{apt1.group_id}/apartments")).to route_to("pages#id1") #Groups/groupid/apartments
        #     end

        #     it 'invalid id\'s should not receive a route' do
        #         visit("/invalid")
        #         expect(page.status_code).to be(404)
        #     end

        #     it 'each group should only see their own listings, not other groups\' listings' do
        #         visit("/id1")
        #         expect(page).to have_content(apt1.address)
        #         expect(page).not_to have_content(apt2.address)
        #     end
        # end

        # context 'An apartment listing has been added to the DB' do
        #     it 'should appear on the apartments page' do
        #         visit("/apartments").to have_content(apt2.address)
        #     end
        # end

    end
end
