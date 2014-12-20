module PocketKnight
  class UserSummary < ActiveRecord::Base
    establish_connection :brave_brigage
    # attr_accessible :title, :body
  end
end
