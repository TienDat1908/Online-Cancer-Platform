# == Schema Information
#
# Table name: appointments
#
#  id           :integer          not null, primary key
#  user_id      :integer          not null
#  doctor_id    :integer          not null
#  scheduled_at :datetime
#  status       :string
#  notes        :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_appointments_on_doctor_id  (doctor_id)
#  index_appointments_on_user_id    (user_id)
#

require "test_helper"

class AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
