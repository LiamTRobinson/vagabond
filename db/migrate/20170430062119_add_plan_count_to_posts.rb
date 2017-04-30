class AddPlanCountToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :plan_items_count, :integer, default: 0
  end
end
