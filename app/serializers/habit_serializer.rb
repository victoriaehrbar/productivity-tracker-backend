class HabitSerializer < ActiveModel::Serializer
  attributes :id, :completed, :date, :description, :month_id

  def date
    self.object.date.strftime("%m/%d/%Y %I:%M%p")
  end

end
