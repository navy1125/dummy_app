module SoulGuardian
  class UserLogin < ActiveRecord::Base
    establish_connection :soul_guardian
    # attr_accessible :title, :body
    # self.abstract_class = true
    # establish_connection :database_b
  end
end
