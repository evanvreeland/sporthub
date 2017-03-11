class User < ActiveRecord::Base
  has_many :teams, through :user_team
end
