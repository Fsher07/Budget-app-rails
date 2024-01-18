class CreateJoinTableCategoriesOperations < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :operations do |t|
      t.index [:category_id, :operation_id]
      t.index [:operation_id, :category_id]
    end
  end
end
