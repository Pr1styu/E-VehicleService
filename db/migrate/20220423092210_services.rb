class Services < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :location
      t.integer :snumber
      t.float :rating
      t.string :brands
      t.string :pnumber
      t.date :nextappointment
      t.timestamps
    end
  end
end
