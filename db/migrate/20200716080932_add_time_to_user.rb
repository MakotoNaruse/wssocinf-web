class AddTimeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_recieved_time, :datetime, null: true

    User.update_all(last_recieved_time: Time.current)

    change_column :users, :last_recieved_time, :datetime, null: false
  end
end
