require 'rails_helper'

RSpec.describe ContactController, type: :controller do
  describe "GET #index" do
    it "returns HTTP success" do
      # Very simple test, but making sure all controllers return
      # HTTP 200 status codes is a very easy way to make sure there
      # are no grave errors in the application (Pareto principle)
      get :index
      expect(response).to have_http_status(:success)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("contact/index")
    end
  end
end
