class RemoveProfileUrlFromSpeakers < ActiveRecord::Migration[5.2]
  def change
    remove_column :speakers, :profile_url
  end
end
