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

  def show_guests(current_user)
    if has_guests?
      guests = users.select { |user| user != current_user  }
      guest_names = guests.map { |guest| guest.name }
      guest_names.to_sentence
    else
      "no one yet"
    end
  end

  def has_guests?
    users.size > 1
  end

end
