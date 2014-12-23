module PocketKnight
  class UserSummary < ActiveRecord::Base
    establish_connection :pocket_knight
    # attr_accessible :title, :body
  end
end
