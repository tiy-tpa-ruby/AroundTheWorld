class Restaurant < ApplicationRecord
  CUISINES = [ "", "Italian", "Burgers" ]
  PRICES = [
    ["", 0],
    ["$", 1],
    ["$$", 2],
    ["$$$", 3],
    ["$$$$", 4],
    ["$$$$$", 5]
  ]

  validates :address, presence: true
  validates :hours, presence: true
  validates :name, presence: true
  validates :phone, presence: true

  attachment :menu

  has_many :pictures
end
