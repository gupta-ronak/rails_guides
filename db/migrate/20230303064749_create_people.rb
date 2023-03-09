class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.boolean :terms_of_service

      t.timestamps
    end
  end
end
