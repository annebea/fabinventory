class AddUserToFabrics < ActiveRecord::Migration[6.0]
  def change
    add_reference :fabrics, :user, null: false, foreign_key: true
  end
end
