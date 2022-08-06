class AddColumnToCats < ActiveRecord::Migration[7.0]
  def change
    add_column :cats, :food_id, :integer
  end
end
