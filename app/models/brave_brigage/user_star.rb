module BraveBrigage
  class UserStar < ActiveRecord::Base
    include RailsAdminCharts
    establish_connection :brave_brigage
    # attr_accessible :title, :body
    def self.graph_data since=5.day.ago
      [
        {
        name: 'Paid Sum',
        pointInterval: point_interval = 1.day * 1000,
        pointStart: start_point = since.to_i * 1000,
        data:(
          deltas = self.group('DATE(paid_dt)').sum('paid_star')
          (since.to_date..Date.today).map { |date| deltas[date] || deltas[date.to_s] || 0 } 
      )
      #data: self.delta_records_since(since)
      #data: self.where("reg_dt != ''").delta_records_since(since)
      #data: self.select("count(*) as count_all,reg_dt as date_created_at").where("reg_dt > 20141119").group(:reg_dt)
      },
        {
        name: 'New User',
        pointInterval: point_interval,
        pointStart: start_point,
        data:(
          deltas = BraveBrigage::UserLogin.group('DATE(reg_dt)').count
          (since.to_date..Date.today).map { |date| deltas[date] || deltas[date.to_s] || 0 } 
      )
      #data: self.delta_records_since(since)
      #data: self.where("reg_dt != ''").delta_records_since(since)
      #data: self.select("count(*) as count_all,reg_dt as date_created_at").where("reg_dt > 20141119").group(:reg_dt)
      },
        {
        name: 'Paid Count',
        pointInterval: point_interval,
        pointStart: start_point,
        data:(
          deltas = self.group('DATE(paid_dt)').count
      (since.to_date..Date.today).map { |date| deltas[date] || deltas[date.to_s] || 0 } 
      )
      #data: self.where(dt: nil).delta_records_since(since)
      #data: self.delta_records_since(since)
      #data: self.select("count(*) as count_all,dt").where("reg_dt > 20141119").group(:dt)
      }
      ]
    end
  end
end
