class Mixtape < ApplicationRecord
  belongs_to :artiste
  has_many :images
  accepts_nested_attributes_for :images
end
