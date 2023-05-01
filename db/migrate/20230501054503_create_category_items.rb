class CreateCategoryItems < ActiveRecord::Migration[6.1]
  def change
    create_table :category_items do |t|
      t.belongs_to :category, null: false, foreign_key: true
      t.string :name
      t.string :price
      t.string :description

      t.timestamps
    end
  end
end
