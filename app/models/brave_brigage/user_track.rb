module BraveBrigage
  class UserTrack < ActiveRecord::Base
    establish_connection :brave_brigage
    # attr_accessible :title, :body
  end
end
