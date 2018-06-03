class UsersController < ApplicationController
  before_action :current_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        render :new
      end
    end

    def show
      @message = params[:message] if params[:message]
      @message ||= false
    end

  private

  def current_user
    @user = User.find(params[:id])
  end

  def user_params
        params.require(:user).permit(
          :name,
          :title,
          :email,
          :password,
          :password_confirmation,
          :admin
        )
      end
end
