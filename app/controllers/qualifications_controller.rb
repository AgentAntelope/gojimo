class QualificationsController < ApplicationController
  before_action :fetch_qualifications, only: :index

  def index
    @qualifications
  end

  private

  def fetch_qualifications
    @qualifications ||= Qualification.fetch_all
  end
end
