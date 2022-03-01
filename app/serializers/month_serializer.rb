class MonthSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :habits
end
