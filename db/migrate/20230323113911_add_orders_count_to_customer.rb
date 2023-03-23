class AddOrdersCountToCustomer < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :orders_count, :integer
  end
end
