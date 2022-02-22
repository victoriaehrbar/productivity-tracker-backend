class CreateHabits < ActiveRecord::Migration[6.1]
  def change
    create_table :habits do |t|
      t.integer :month_id
      t.boolean :completed
      t.datetime :date
      t.string :description

      t.timestamps
    end
  end
end
