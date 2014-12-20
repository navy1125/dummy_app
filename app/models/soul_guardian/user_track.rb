module SoulGuardian
  class UserTrack < ActiveRecord::Base
    establish_connection :brave_brigage
    establish_connection :soul_guardian
    # attr_accessible :title, :body
  end
end
