require 'rails_helper'

RSpec.describe QualificationsController, type: :controller do
  it "responds on index" do
    get :index
    expect(response).to be_ok
  end
end
