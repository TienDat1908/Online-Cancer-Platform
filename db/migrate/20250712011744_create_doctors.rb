class CreateDoctors < ActiveRecord::Migration[8.0]
  def change
    create_table :doctors do |t|
      t.references :user, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
      t.string :specialization
      t.text :bio
      t.string :license_number
      t.string :hospital

      t.timestamps
    end
  end
end
