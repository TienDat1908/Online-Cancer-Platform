class CreateAppointments < ActiveRecord::Migration[8.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.datetime :scheduled_at
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end
