class AddAdminToDoctors < ActiveRecord::Migration[8.0]
  def change
    add_reference :doctors, :admin, null: false, foreign_key: true
  end
end
