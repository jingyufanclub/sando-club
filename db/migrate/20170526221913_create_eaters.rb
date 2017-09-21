class CreateEaters < ActiveRecord::Migration[5.1]
  def change
    create_table :eaters do |t|
      t.references :user
      t.references :lunchdate
      t.boolean :host, default: false

      t.timestamps
    end
  end
end
