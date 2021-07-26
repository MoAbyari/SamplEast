class Artist < ApplicationRecord
  has_many :samples
  has_and_belongs_to_many :instruments
end
