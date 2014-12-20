class CreateUserTracks < ActiveRecord::Migration
  def change
    create_table :user_tracks do |t|
      t.integer :user_no
      t.integer :day1
      t.integer :day2
      t.integer :day3
      t.integer :day4
      t.integer :day5
      t.integer :day6
      t.integer :day7
      t.integer :day8
      t.integer :day9
      t.integer :day10
      t.integer :day11
      t.integer :day12
      t.integer :day13
      t.integer :day14
      t.integer :day15
      t.integer :day16
      t.integer :day17
      t.integer :day18
      t.integer :day19
      t.integer :day20
      t.integer :day21

      t.timestamps
    end 
    add_index :user_tracks,:user_no
  end
end
