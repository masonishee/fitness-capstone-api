class WorkoutSchedule < ApplicationRecord
  belongs_to :user

  has_and_belongs_to_many :workouts

  validates :date, presence: true
end
