class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    #@user = User.new(allowed_user_params)
    @user = User.new(email: params[:email], username: params[:username], password: params[:password])
    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def allowed_user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
