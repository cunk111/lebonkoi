class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :description
      t.float :min_price
      t.float :bid_amount
      t.float :current_bid
      t.datetime :ending

      t.timestamps
    end
  end
end
