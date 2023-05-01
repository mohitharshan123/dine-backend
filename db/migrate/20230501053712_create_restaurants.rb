class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :slug
      t.string :description
      t.string :location
      t.string :contact
      t.string :payment_key_id
      t.string :payment_key_secret

      t.timestamps
    end
  end
end
