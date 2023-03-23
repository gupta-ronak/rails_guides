class AddOutForPrintToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :out_for_print, :boolean
  end
end
