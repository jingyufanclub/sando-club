class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :bio
      t.string :password_digest
      t.integer :avatar_id, default: 1
      t.integer :dates_completed, default: 0
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
