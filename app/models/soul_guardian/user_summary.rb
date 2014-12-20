module SoulGuardian
  class UserSummary < ActiveRecord::Base
    establish_connection :soul_guardian
    # attr_accessible :title, :body
  end
end
