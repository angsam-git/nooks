require 'rails_helper'

describe GroupsController, type: :controller do
	describe "Groups" do

		# let!(:group1) { FactoryBot.create(:group, id: 1, name: "id1") }
		
		context 'Testing apartments_controller functions' do
			# groupHash = {id: group1.id, name: group1.name}
			groupHash = {id: 1, name: "id1"}

			it 'create' do
				get :create, :params => {:group => groupHash}
            end

            it 'search' do
				get :create, :params => {:group => groupHash}
				get :search, :params => {:group => groupHash}
            end

			it 'index' do
				# get :create, :params => {:group => groupHash}
				get :index
            end

			### FAILURE	ActionController::MissingExactTemplate: GroupsController#edit is missing a template for request formats: text/html
			it 'edit' do
				get :create, :params => {:group => groupHash}
				get :edit, :params => {:id => groupHash[:id]}
			end

			it 'update' do
				get :create, :params => {:group => groupHash}
				get :update, :params => {:id => groupHash[:id], :group => groupHash}
			end

			it 'destroy' do
				get :create, :params => {:group => groupHash}
				get :destroy, :params => {:id => groupHash[:id]}
			end
		end

	end
end
