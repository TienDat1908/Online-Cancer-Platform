class CreateOrganizations < ActiveRecord::Migration[8.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :website
      t.text :description

      t.timestamps
    end
  end
end
