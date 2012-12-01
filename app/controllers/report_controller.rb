require 'uuidtools'
class ReportController < ApplicationController
  
  respond_to :json
  
  def index
    @reports = Report.all
  end

  def show
    @report = Report.find params[:id]
  end

  def create
    phone_id = !!params[:phone_id] ? params[:phone_id] : UUIDTools::UUID.random_create.to_s
    @report = Report.create(lat: params[:lat], long: params[:long], complete: false, description: params[:description],
                            why: params[:why], phone_id: phone_id)
    respond_with @report
  end
end
