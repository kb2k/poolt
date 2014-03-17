class AddNameFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string, default: ''
    add_index :users, :firstname
    add_column :users, :middlename, :string, default: ''
    add_index :users, :middlename
    add_column :users, :lastname, :string, default: ''
    add_index :users, :lastname
  end
end
