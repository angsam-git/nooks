require 'rails_helper'

describe PagesController, type: :controller do
    describe "Pages" do

        context 'test homepage' do
            it '...' do
                get :home
                # get "/"
                expect(response).to render_template("/")
                # expect(get("/")).to route_to("pages#home")
            end
        end


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
