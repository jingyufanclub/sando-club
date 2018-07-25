class UsersChangeColumnDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:users, :avatar_id, nil)
  end
end
