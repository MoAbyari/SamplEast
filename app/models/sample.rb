class Sample < ApplicationRecord
  belongs_to :instrument, :optional => true
  belongs_to :artist, :optional => true
  has_and_belongs_to_many :soundbags

  def self.search(search)
    if search
      where(["name LIKE ?","%#{:search}%"])
    else
      all
    end
  end
end
