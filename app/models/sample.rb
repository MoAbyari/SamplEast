class Sample < ApplicationRecord
  belongs_to :instrument, :optional => true
  belongs_to :artist, :optional => true
  has_and_belongs_to_many :soundbags
end
