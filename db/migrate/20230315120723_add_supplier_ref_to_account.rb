class AddSupplierRefToAccount < ActiveRecord::Migration[7.0]
  def change
    add_reference :accounts, :supplier, foreign_key: true
  end
end
