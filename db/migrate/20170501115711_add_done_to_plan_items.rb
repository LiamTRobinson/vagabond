class AddDoneToPlanItems < ActiveRecord::Migration[5.0]
  def change
    add_column :plan_items, :done, :integer
  end
end
