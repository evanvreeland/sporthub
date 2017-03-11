class Team < ActiveRecord::Base
  belongs_to :organization_id
  has_many :users, through :user_team
end
