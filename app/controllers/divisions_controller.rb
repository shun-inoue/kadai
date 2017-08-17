class DivisionsController < ApplicationController
  def index
    @data = Division.all
  end

  def show
    @msg = '部署データ'
    @data = Division.find(params[:id]) 
  end

  def add
    @msg = "部署新規登録"
    @division = Division.new
  end


  def create
    @division = Division.new division_params
  	if @division.save then
  	  redirect_to '/divisions'
  	else
    	render 'add'
    end
  end
  
  def edit
    @msg = "編集.[id = "+ params[:id] + "]"
  @division = Division.find(params[:id])
  end
  
  def update
  obj = Division.find(params[:id])
  obj.update(division_params)
  redirect_to '/divisions'
  end

def delete
  obj = Division.find(params[:id])
  obj.destroy
  redirect_to '/divisions'
end
  
  
private
def division_params
  params.require(:division).permit(:name)
end 
end
