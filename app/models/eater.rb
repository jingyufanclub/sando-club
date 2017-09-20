class Eater < ApplicationRecord
  belongs_to :user
  belongs_to :lunchdate
end
