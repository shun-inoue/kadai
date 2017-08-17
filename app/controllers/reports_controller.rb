class ReportsController < ApplicationController
  def index
    @data = Report.all
  end

  def add
    @msg = "レポート記入"
    @report = Report.new
  end
  
  def create
    @report = Report.new report_params
  	if @report.save then
  	  redirect_to '/reports'
  	else
    	render 'add'
    end
  end
  
  def show
    @msg = 'レポート内容'
    @data = Report.find(params[:id]) 
  end
  
  def edit
    @msg = "編集"
    @report = Report.find(params[:id])
  end
  
  def update
    obj = Report.find(params[:id])
    obj.update(report_params)
    redirect_to '/reports'
  end
  
  private
  def report_params
    params.require(:report).permit(:entry_date, :user_id, :report)
  end
end
