class CreateUserStars < ActiveRecord::Migration
  def change
    create_table :user_stars do |t|
      t.integer :user_no
      t.integer :paid_star
      t.integer :sub_star
      t.string :paid_dt
      t.string :reg_dt

      t.timestamps
    end
    add_index :user_stars,:user_no
  end
end
