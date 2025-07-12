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
#  admin_id     :integer          not null
#
# Indexes
#
#  index_organizations_on_admin_id  (admin_id)
#

class Organization < ApplicationRecord
  belongs_to :admin

  has_many :users
  has_many :doctors

  validates :name, :address, :phone_number, :email, presence: true
end
