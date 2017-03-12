class UserController < ApplicationController
  def show
    @user = User.find(1)
    @sports = ['baseball', 'soccer']
  end
end
