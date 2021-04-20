require 'rails_helper'

describe GroupsController, type: :controller do

	# let!(:group1) { FactoryBot.create(:group, id: 0, name: "id1") }

	describe "Groups" do
		
		context 'there is a group' do
			groupHash = {id: 0, name: "id1"}  # instead of FactoryBot

			it 'test create' do
				get :create, :params => {:group => groupHash}
            end

            it 'test search and create' do
				get :create, :params => {:group => groupHash}
				get :search, :params => {:group => groupHash}
            end

			it 'test index' do
				get :create, :params => {:group => groupHash}
				get :index
            end

			# it 'test edit' do
			# 	# get :edit, :params => {:id => groupHash[id]}
			# 	get :create, :params => {:group => groupHash}
			# 	get :edit, :params => {:id => 0}
			# end
		end

	end
end
