require 'rails_helper'

describe GroupsController, type: :controller do

	# let!(:group1) { FactoryBot.create(:group, id: 0, name: "id1") }

	describe "Groups" do
		
		context "there is a group" do
            it 'should be able to create' do
            	groupHash = {id: 0, name: "id1"}
				get :create, :params => {:group => groupHash}
				get :search, :params => {:group => groupHash}
            end
        end


	end
end
