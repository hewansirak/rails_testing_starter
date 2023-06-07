class UsersController < ApplicationController

  def index
    @users = User.all
    render json: {data: @users, success: true, status: 200}
  end

  def create 
    @users = User.new(user_params)
    if @user.save
        render json: {data: @users, success: true, status: 200}
    else
        render json: {data: @users.errors, success: false, status: 400}
    end
  end


#   def update
#     @users = User.find(params[:id])
#     if @user.save
#         render json: {data: @users, success: true, status: 200}
#     else
#         render json: {data: @users.errors, success: false, status: 400}
#     end
#   end

  private
  def user_params
    params.require(:user).permit(:name, :age, :email)
  end
end
