class Rutine < ApplicationRecord
  belongs_to :user
  validates :exercise, presence: true
  validates :sets, presence: true
  validates :reps, presence: true
          
end
