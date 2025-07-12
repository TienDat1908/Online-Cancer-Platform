# == Schema Information
#
# Table name: organizations
#
#  id           :integer          not null, primary key
#  name         :string
#  address      :string
#  phone_number :string
#  email        :string
#  website      :string
#  description  :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require "test_helper"

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
