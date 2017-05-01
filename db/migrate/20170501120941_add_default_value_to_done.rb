class AddDefaultValueToDone < ActiveRecord::Migration[5.0]
  def change
  	change_column :plan_items, :done, :integer, default: 0
  end
end
