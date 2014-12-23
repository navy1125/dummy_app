module PocketKnight
  class UserTrack < ActiveRecord::Base
    establish_connection :pocket_knight
    # attr_accessible :title, :body
  end
end
