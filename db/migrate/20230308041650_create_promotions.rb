class CreatePromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :promotions do |t|
      t.timestamp :start_date
      t.timestamp :end_date

      t.timestamps
    end
  end
end
