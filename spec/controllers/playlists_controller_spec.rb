require 'rails_helper'

RSpec.describe PlaylistsController, type: :controller do

	describe "GET #index" do
		it "returns http success" do
			get :index
			expect(response).to have_http_status(:success)
		end
	end

	describe "GET #new" do
		it "returns http success" do
			get :new
			expect(response).to have_http_status(:success)
		end
	end

	describe "GET #show" do
        it "returns http success" do
            playlist = FactoryGirl.create(:playlist)
            get :show, id: playlist
            expect(response).to have_http_status(:success)
        end
    end

end
