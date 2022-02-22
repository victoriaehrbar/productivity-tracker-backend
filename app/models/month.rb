class Month < ApplicationRecord
    has_many :habits
    validates :name, presence: true
end
