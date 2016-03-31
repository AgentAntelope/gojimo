require 'rails_helper'

RSpec.describe QualificationsController, type: :controller do
  it "responds on index" do
    VCR.use_cassette("qualifications") do
      get :index
      expect(response).to be_ok
    end
  end
end
