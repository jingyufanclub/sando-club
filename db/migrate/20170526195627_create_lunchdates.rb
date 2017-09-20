class CreateLunchdates < ActiveRecord::Migration[5.1]
  def change
    create_table :lunchdates do |t|
      t.date :date
      t.time :time
      t.integer :seats
      t.references :group
      t.string :place
      t.float :longitude
      t.float :latitude
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
