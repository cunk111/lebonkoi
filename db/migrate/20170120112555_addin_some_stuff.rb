class AddinSomeStuff < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :address, :string
  end
end
