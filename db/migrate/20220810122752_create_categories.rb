class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name, :not_null => true
      t.string :icon, :not_null => true
      t.references :user, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
