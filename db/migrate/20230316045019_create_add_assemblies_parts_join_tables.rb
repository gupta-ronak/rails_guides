class CreateAddAssembliesPartsJoinTables < ActiveRecord::Migration[7.0]
  def change
    create_join_table :assemblies, :parts do |t|
      t.index :assembly_id
      t.index :part_id
      t.timestamps
    end

   
  end
end
