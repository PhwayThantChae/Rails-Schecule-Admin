class Schedule < ApplicationRecord
  belongs_to :speaker
  belongs_to :room

  TIMESLOT = ["10:00 AM - 10:55 AM", "11:00 AM - 11:55 AM", "12:00 AM - 12:55 AM",
              "1:00 AM - 1:55 AM", "2:00 AM - 2:55 AM", "3:00 AM - 3:55 AM"]
end
