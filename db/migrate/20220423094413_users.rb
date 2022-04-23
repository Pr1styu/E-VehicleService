class Users < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :is_service, :Boolean
    remove_column :users, :idnum, :string
    remove_column :services, :idnum, :string
    remove_column :vservices, :idnum, :string
    add_reference :users, :services, null: false, foreign_key: true
  end
end
