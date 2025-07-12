# == Schema Information
#
# Table name: patient_profiles
#
#  id             :integer          not null, primary key
#  user_id        :integer          not null
#  cancer_type    :string
#  stage          :string
#  diagnosis_date :date
#  notes          :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_patient_profiles_on_user_id  (user_id)
#

class PatientProfile < ApplicationRecord
  belongs_to :user

  validates :cancer_type, :stage, :diagnosis_date, presence: true
end
