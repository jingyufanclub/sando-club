class Location < ApplicationRecord
  has_many :reviews
  has_many :lunchdates
end
