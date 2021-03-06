class Group < ApplicationRecord
  has_many :memberships
  has_many :users, through: :memberships
  has_many :lunchdates
  validates :name, presence: true, uniqueness: { case_sensitive: false }

  def sort_lunchdates
    lunchdates.order("date ASC")
  end
  
end
