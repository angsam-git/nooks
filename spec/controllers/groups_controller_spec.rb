require 'rails_helper'

describe GroupsController, type: :controller do

	let!(:group1) { FactoryBot.create(:group, id: 0, name: "id1") }

	describe "Groups" do
		
		context 'search' do
            it '...' do
            	# post :search => group1.id
            	# post :search, :params => {:id => group1.id, :name => group1.name}
            	# post :search, :params => {:name => group1.name}
            	print "****group name: #{group1.name}"
            	get :create, :params => {:name => group1.name}
              	# expect(Group.search()).to eql() 
            end
        end

	end
end
