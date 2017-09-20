require 'pry'

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

  def has_other_guests?
    users.size > 1
  end

  def show_only_guests(current_user)
    guests = users.select { |user| user != current_user  }
    guest_names = []
    guests.each do |g|
      guest_names << g.name
    end
    guest_names.to_sentence
  end
end
