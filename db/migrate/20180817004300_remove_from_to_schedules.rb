class RemoveFromToSchedules < ActiveRecord::Migration[5.2]
  def change
    remove_column :schedules, :from, :string
    remove_column :schedules, :to, :string
  end
end
