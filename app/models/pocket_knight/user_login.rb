module PocketKnight
  class UserLogin < ActiveRecord::Base
    establish_connection :pocket_knight
    # attr_accessible :title, :body
    # self.abstract_class = true
    # establish_connection :database_b
  end
end
