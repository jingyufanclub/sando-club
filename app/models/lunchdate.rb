class Lunchdate < ApplicationRecord
  has_many :eaters
  has_many :users, through: :eaters
  belongs_to :group
  validates :date, presence: true
  validates :time, presence: true
  validates :place, presence: true

  def show_readable_date
    date.strftime("%A, %B %d, %Y")
  end

  def show_readable_time
    time.strftime("%l:%M%p")
  end
end
