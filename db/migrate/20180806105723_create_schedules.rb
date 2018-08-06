class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.references :speaker, foreign_key: true
      t.references :room, foreign_key: true
      t.string :topic
      t.text :slide_url
      t.text :video_url

      t.timestamps
    end
  end
end
