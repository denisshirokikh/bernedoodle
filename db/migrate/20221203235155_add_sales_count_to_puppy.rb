class AddSalesCountToPuppy < ActiveRecord::Migration[7.0]
  def change
    add_column :puppies, :sales_count, :integer, null: false, default: 0
  end
end
