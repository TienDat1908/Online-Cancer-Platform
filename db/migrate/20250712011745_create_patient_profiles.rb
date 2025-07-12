class CreatePatientProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :patient_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :cancer_type
      t.string :stage
      t.date :diagnosis_date
      t.text :notes

      t.timestamps
    end
  end
end
