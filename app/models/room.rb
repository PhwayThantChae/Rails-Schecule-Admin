class Room < ApplicationRecord

    validates :room_number,:building,:direction,  presence: true

    has_many :schedules, dependent: :destroy
end
