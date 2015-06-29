require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
    	get :show, id: "1dfeR4HaWDbWqFHLkxsg1d"
    	expect(response).to have_http_status(:success)
    end
  end

end
