class User < ApplicationRecord
  has_secure_password

  has_many :memberships
  has_many :groups, through: :memberships

  has_many :eaters
  has_many :lunchdates, through: :eaters

  has_many :reviews
  belongs_to :avatar, optional: true

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
