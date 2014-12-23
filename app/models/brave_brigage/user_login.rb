module BraveBrigage
  class UserLogin < ActiveRecord::Base
    include RailsAdminCharts
    establish_connection :brave_brigage
    # attr_accessible :title, :body
    # self.abstract_class = true
    # establish_connection :database_b
    def number_of_lanes
      0
    end

    def delta_records_reg(since = 30.days.ago)
    end 
    def delta_records_update(since = 30.days.ago)
      deltas = self.group('DATE(dt)').count
      (since.to_date..Date.today).map { |date| deltas[date] || deltas[date.to_s] || 0 } 
    end 

    def self.graph_data since=5.day.ago
      [
        {
        name: 'Reg date',
        pointInterval: point_interval = 1.day * 1000,
        pointStart: start_point = since.to_i * 1000,
        data:(
          deltas = self.group('DATE(reg_dt)').count
          (since.to_date..Date.today).map { |date| deltas[date] || deltas[date.to_s] || 0 } 
      )
        #data: self.delta_records_since(since)
        #data: self.where("reg_dt != ''").delta_records_since(since)
        #data: self.select("count(*) as count_all,reg_dt as date_created_at").where("reg_dt > 20141119").group(:reg_dt)
      },
        {
        name: 'Active dt',
        pointInterval: point_interval,
        pointStart: start_point,
        data:(
          deltas = self.group('DATE(dt)').count
          (since.to_date..Date.today).map { |date| deltas[date] || deltas[date.to_s] || 0 } 
      )
        #data: self.where(dt: nil).delta_records_since(since)
        #data: self.delta_records_since(since)
        #data: self.select("count(*) as count_all,dt").where("reg_dt > 20141119").group(:dt)
      }
      ]
    end
    def self.xaxis
      'datetime'
      #['cat a', 'cat b', 'cat c' 'cat d', 'cat e', 'cat f', 'cat g', 'cat h']
    end
  end
end
