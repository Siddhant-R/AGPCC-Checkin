require 'rails_helper'

RSpec.describe RegistrationController, type: :controller do

  describe "GET #check_in" do
    it "returns http success" do
      get :check_in
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #rsvp" do
    it "returns http success" do
      get :rsvp
      expect(response).to have_http_status(:success)
    end
  end

end
