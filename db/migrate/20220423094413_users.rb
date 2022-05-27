class Users < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :is_service, :Boolean
    add_reference :users, :services, null: false, foreign_key: true
  end
end
