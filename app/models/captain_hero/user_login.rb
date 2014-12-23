module CaptainHero
  class UserLogin < ActiveRecord::Base
    establish_connection :captain_hero
    # attr_accessible :title, :body
    # self.abstract_class = true
    # establish_connection :database_b
  end
end
