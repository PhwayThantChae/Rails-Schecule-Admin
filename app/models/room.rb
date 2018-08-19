class Room < ApplicationRecord
    has_many :schedules, dependent: :destroy
end
