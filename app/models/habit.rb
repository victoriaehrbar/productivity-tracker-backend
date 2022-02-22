class Habit < ApplicationRecord
    belongs_to :month
    validates :completed, presence: true
end
