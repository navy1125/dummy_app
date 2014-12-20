module SoulGuardian
  class UserStar < ActiveRecord::Base
    establish_connection :soul_guardian
    # attr_accessible :title, :body
  end
end
