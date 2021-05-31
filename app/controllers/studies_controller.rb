class StudiesController < ApplicationController

  before_action :authenticate

  def index
    studies = Study.all
    render json: studies
  end

  def show
    study = Study.find(params[:id])
    render json: study
  end

  private

  def authenticate
    authorized = authenticate_with_http_token do |token, options|
      token == Rails.application.credentials.token
    end
    head 401 unless authorized
  end
end
