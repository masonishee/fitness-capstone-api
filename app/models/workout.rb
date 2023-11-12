class Workout < ApplicationRecord
  belongs_to :user
  has_many :routines
  has_many :exercises

  has_many :workout_schedules
  has_many :scheduled_dates, through: :workout_schedules, source: :date
  attribute :scheduled_date, :date
end
