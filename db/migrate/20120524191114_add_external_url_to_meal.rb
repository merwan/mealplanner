class AddExternalUrlToMeal < ActiveRecord::Migration
  def change
    add_column :meals, :link, :string
  end
end
