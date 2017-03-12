class UserController < ApplicationController
  def show
    @user = User.find(1)
    puts @user.first_name
  end
end
