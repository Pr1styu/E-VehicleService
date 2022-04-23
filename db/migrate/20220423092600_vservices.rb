class Vservices < ActiveRecord::Migration[7.0]
  def change
    create_table :vservices do |t|
      t.string :vin
      t.references :user, null:false, foreign_key:true
      t.references :services, null:false, foreign_key:true
      t.string :idnum
      t.string :sdescription

      t.timestamps
    end
  end
end
