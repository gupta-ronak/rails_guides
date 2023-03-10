class AddDetailsToPerson < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :name, :string
    add_column :people, :bio, :string
    add_column :people, :password, :string
    add_column :people, :registration_number, :integer
  end
end
