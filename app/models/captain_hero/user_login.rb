module CaptainHero
  class UserLogin < ActiveRecord::Base
    establish_connection :brave_brigage
    # attr_accessible :title, :body
    # self.abstract_class = true
    # establish_connection :database_b
  end
end
