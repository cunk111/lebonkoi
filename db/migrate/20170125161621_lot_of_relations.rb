class LotOfRelations < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :category, :reference # Add << Products belongs_to a Category >>  
  end
end
