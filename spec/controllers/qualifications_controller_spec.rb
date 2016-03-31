require 'rails_helper'

RSpec.describe QualificationsController, type: :controller do
  it "responds on index" do
    VCR.use_cassette("qualifications") do
      get :index
      expect(response).to be_ok
    end
  end

  it "responds on show" do
    VCR.use_cassette("qualification") do
      get :show, id: '2622c2f7-73cb-49fa-941e-204f6735d0d8'
      expect(response).to be_ok
    end
  end
end
