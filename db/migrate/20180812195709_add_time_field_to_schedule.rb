class AddTimeFieldToSchedule < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :from, :string
    add_column :schedules, :to, :string
  end
end
