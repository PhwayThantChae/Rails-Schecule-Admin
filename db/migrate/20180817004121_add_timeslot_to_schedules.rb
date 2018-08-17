class AddTimeslotToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :timeslot, :string
  end
end
