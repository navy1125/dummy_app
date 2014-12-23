module PocketKnight
  class UserStar < ActiveRecord::Base
    establish_connection :pocket_knight
    # attr_accessible :title, :body
  end
end
