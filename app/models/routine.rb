class Routine < ApplicationRecord
  belongs_to :user
  belongs_to :exercise
  belongs_to :workout
end
