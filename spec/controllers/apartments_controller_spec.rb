require 'rails_helper'

describe ApartmentsController, type: :controller do
    describe "Apartments" do
  
        let!(:group1) { FactoryBot.create(:group, id: 1, name: "id1") }

        let!(:apt1) { FactoryBot.create(:apartment, address: '4 E 51st St, New York, NY 10022', mo_rent: 6170.0, num_beds: 2, num_baths: 2, sq_ft: 150000, url: 'www.streateasy.com', group_id: group1.id, id: 1) }
        let!(:apt2) { FactoryBot.create(:apartment, address: '61 E 77st St, New York, NY 10075', mo_rent: 6981.0, num_beds: 1, num_baths: 2, sq_ft: 49000, url: 'www.streateasy.com', group_id: group1.id, id: 2) }


        context 'FactoryBot' do
            it '...' do
                expect(apt1.address).to eql('4 E 51st St, New York, NY 10022')
                expect(apt2.num_beds).to eql(1)
                expect(apt1.id).to eql(1)
            end
        end

        context 'apartments_controller functions' do
            # using hashes instead of FactoryBot
            groupHash = {id: 1, name: "id1"}
            aptHash1 = {id: 1, address: '4 E 51st St, New York, NY 10022', mo_rent: 6170.0, num_beds: 2, num_baths: 2, sq_ft: 150000, url: 'www.streateasy.com', group_id: groupHash[:id]}
            aptHash2 = {id: 2, address: '61 E 77st St, New York, NY 10075', mo_rent: 6981.0, num_beds: 1, num_baths: 2, sq_ft: 49000, url: 'www.streateasy.com', group_id: groupHash[:id]}

            it 'index' do
				# get :index, :params => {:group_id => group1.id}
                get :index, :params => {:group_id => groupHash[:id]}
            end

            it 'create' do
				# post :create, :params => {:group_id => group1.id, :apartment => aptHash1}
                post :create, :params => {:group_id => groupHash[:id], :apartment => aptHash1}
            end

            #### ERROR    NameError: undefined local variable or method `apartments_path'
            it 'destroy' do
                get :create, :params => {:group_id => groupHash[:id], :apartment => aptHash1}
			    get :destroy, :params => {:group_id => group1.id, :id => aptHash1[:id]} #, :apartment => aptHash1}
            end

            ### FAILURE
            it 'edit' do
                get :create, :params => {:group_id => groupHash[:id], :apartment => aptHash1}
			    get :edit, :params => {:group_id => group1.id, :id => aptHash1[:id]} #, :apartment => aptHash1}
            end

            ### ERROR     NoMethodError: undefined method `apartment_path'
            it 'update' do
                get :create, :params => {:group_id => groupHash[:id], :apartment => aptHash1}
				# get :update, :params => {:group_id => group1.id, :apartment => aptHash1}
                # get :update, :params => {:id => aptHash1[:id]}
                get :update, :params => {:group_id => group1.id, :id => aptHash1[:id], :apartment => aptHash1}
            end
        end

        

    end
end
