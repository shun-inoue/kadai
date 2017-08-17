class UsersController < ApplicationController
  def index
    @data = User.all
  end

  def show
    @msg = 'ユーザーデータ'
    @data = User.find(params[:id]) 
  end

  def add
    @msg = "ユーザ新規登録"
    @user = User.new
  end


  def create
    @user = User.new user_params
  	if @user.save then
  	  redirect_to '/users'
  	else
    	render 'add'
    end
  end
  
  def edit
    @msg = "編集.[id = "+ params[:id] + "]"
  @user = User.find(params[:id])
  end
  
  def update
  obj = User.find(params[:id])
  obj.update(user_params)
  redirect_to '/users'
  end

def delete
  obj = User.find(params[:id])
  obj.destroy
  redirect_to '/users'
end
  
  
private
def user_params
  params.require(:user).permit(:name, :kana, :memo, :division_id)
end 


end
