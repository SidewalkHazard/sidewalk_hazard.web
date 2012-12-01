class ReportController < ApplicationController
  
  responds_to :json
  
  def index
  end

  def show
  end

  def create
    @report = Report.create(lat: params[:lat], long: params[:long], complete: false, description: params[:description],
                            why: params[:why], phone_id: params[:phone_id])
    respond_with @report
  end
end
