class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.text :description
      t.decimal :price, precision: 6, scale: 2
      t.date :date
      t.integer :location_id

      t.timestamps
    end
  end
end
