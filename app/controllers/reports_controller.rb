class ReportsController < ApplicationController
  def index
    @data = Report.new
    @data = Report
 	  if request.post? then
 	    if params[:to] != nil 
 	      todate = "entry_date >= '#{params[:to]}' and "
 	    end
 	    if params[:from] != nil 
 	      fromdate = "entry_date <= '#{params[:from]}' and "
 	    end
 	    if params[:name] != nil 
 	      name = "name like '#{params[:name]}'"
 	    end
 	     @data = Report.page(params[:page]).per(10).order('user_id ASC', 'entry_date desc').joins(:user).where todate + fromdate + name
    else
    @data = Report.page(params[:page]).per(10).order('user_id ASC', 'entry_date desc').joins(:user)
  end
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
    @user = Report.where(user_id: params[:user_id])
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
