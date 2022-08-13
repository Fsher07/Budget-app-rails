class AddReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :operation, null: false, foreign_key: true, index: true
  end
end
