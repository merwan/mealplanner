class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.date :eating_day
      t.text :menu_description

      t.timestamps
    end
  end
end
