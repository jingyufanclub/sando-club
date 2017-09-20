class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :description
      t.boolean :privacy, default: false

      t.timestamps
    end
  end
end
