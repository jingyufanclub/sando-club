class CreateEaters < ActiveRecord::Migration[5.1]
  def change
    create_table :eaters do |t|
      t.references :user
      t.references :lunchdate

      t.timestamps
    end
  end
end
