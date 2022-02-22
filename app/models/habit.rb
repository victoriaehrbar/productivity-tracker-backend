class Habit < ApplicationRecord
    belongs_to :month
    validates :description, presence: true
end
