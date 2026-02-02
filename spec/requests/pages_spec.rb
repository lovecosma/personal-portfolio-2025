require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /home" do
    let!(:tech_type) { create(:tech_type, name: "Backend", icon_filename: "backend.svg", rank: 1) }
    let!(:technology) { create(:technology, name: "Ruby on Rails", tech_type: tech_type, rank: 1) }

    it "returns http success" do
      get root_path
      expect(response).to have_http_status(:success)
    end

    it "displays tech types and technologies" do
      get root_path
      expect(response.body).to include("Backend")
      expect(response.body).to include("Ruby on Rails")
    end

    it "sets the correct page title" do
      get root_path
      expect(response.body).to include("Matthew Williams | Full Stack Software Engineer in Colorado Springs")
    end
  end

  describe "GET /about" do
    it "returns http success" do
      get about_path
      expect(response).to have_http_status(:success)
    end

    it "displays about page content" do
      get about_path
      expect(response.body).to be_present
    end
  end

  describe "GET /contact" do
    it "returns http success" do
      get contact_path
      expect(response).to have_http_status(:success)
    end

    it "displays contact page content" do
      get contact_path
      expect(response.body).to be_present
    end
  end
end
