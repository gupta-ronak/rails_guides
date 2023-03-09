class AddUsernameToPerson < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :username, :string
    add_column :people, :email, :string
    add_column :people, :age, :integer
  end
end
