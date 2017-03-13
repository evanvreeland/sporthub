class UserController < ApplicationController
  def show
    @user = User.find(1)
    @sports = ['baseball', 'soccer']
    @user_sports = UserSports.where(user_id_id: 1)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :height, :weight)
    end
end
