module CaptainHero
  class UserStar < ActiveRecord::Base
    establish_connection :captain_hero
    # attr_accessible :title, :body
  end
end
