class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :organization, optional: true

  has_one :patient_profile, dependent: :destroy
  has_one :doctor, dependent: :destroy

  has_many :articles, foreign_key: :author_id, dependent: :destroy
  has_many :appointments, dependent: :destroy

  enum :role, { user: "user", doctor: "doctor", admin: "admin" }
  enum :gender, { male: "male", female: "female", other: "other" }

  validates :name, presence: true
end
