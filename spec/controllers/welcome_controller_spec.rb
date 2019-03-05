require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response.body).to eq({ versions: ['v1'] }.to_json)
    end
  end
end
