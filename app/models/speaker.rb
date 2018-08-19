class Speaker < ApplicationRecord
    has_many :schedules, dependent: :destroy
end
