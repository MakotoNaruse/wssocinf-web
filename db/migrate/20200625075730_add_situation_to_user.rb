class AddSituationToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :situation, :integer, default: 0
  end

end
