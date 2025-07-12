# == Schema Information
#
# Table name: doctors
#
#  id              :integer          not null, primary key
#  user_id         :integer          not null
#  organization_id :integer          not null
#  specialization  :string
#  bio             :text
#  license_number  :string
#  hospital        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  admin_id        :integer          not null
#
# Indexes
#
#  index_doctors_on_admin_id         (admin_id)
#  index_doctors_on_organization_id  (organization_id)
#  index_doctors_on_user_id          (user_id)
#

require "test_helper"

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
