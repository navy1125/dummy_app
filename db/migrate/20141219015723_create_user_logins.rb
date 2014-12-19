class CreateUserLogins < ActiveRecord::Migration
  def change
    create_table :user_logins do |t|
      t.integer :user_no
      t.string :dt
      t.string :reg_dt

      t.timestamps
    end
    add_index :user_logins, :user_no
  end
end
