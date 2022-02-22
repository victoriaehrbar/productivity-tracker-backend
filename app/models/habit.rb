class Habit < ApplicationRecord
    belongs_to :month
    validates :description, :completed, presence: true
end
