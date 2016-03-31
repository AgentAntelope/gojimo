class QualificationsController < ApplicationController
  before_action :fetch_qualifications, only: :index
  before_action :fetch_qualification, only: :show

  def index
  end

  def show
  end

  private

  def fetch_qualifications
    @qualifications ||= Qualification.fetch_all
  end

  def fetch_qualification
    @qualification ||= Qualification.fetch(id: params.require(:id))
  end
end
