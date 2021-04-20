require 'rails_helper'

describe GroupsController, type: :controller do

	# let!(:group1) { FactoryBot.create(:group, id: 0, name: "id1") }

	describe "Groups" do
		
		context 'There is a group' do
			groupHash = {id: 1, name: "id1"}  # instead of FactoryBot

			it 'test create' do
				get :create, :params => {:group => groupHash}
            end

            it 'test search' do
				get :create, :params => {:group => groupHash}
				get :search, :params => {:group => groupHash}
            end

			it 'test index' do
				# get :create, :params => {:group => groupHash}
				get :index
            end

			it 'test edit' do
				get :create, :params => {:group => groupHash}
				get :edit, :params => {:id => groupHash[:id]}
			end

			it 'test update' do
				get :create, :params => {:group => groupHash}
				get :update, :params => {:id => groupHash[:id], :group => groupHash}
			end

			it 'test destroy' do
				get :create, :params => {:group => groupHash}
				get :destroy, :params => {:id => groupHash[:id]}
			end
		end

	end
end
