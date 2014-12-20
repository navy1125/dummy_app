  class Fan < ActiveRecord::Base
    #set_table_name :cms_fans
    validates_presence_of(:name)
    belongs_to :fanable, :polymorphic => true
    has_and_belongs_to_many :teams
  end
