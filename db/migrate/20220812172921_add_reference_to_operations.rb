class AddReferenceToOperations < ActiveRecord::Migration[7.0]
  def change
    add_reference :operations, :category, null: false, foreign_key: true, index: true
  end
end
