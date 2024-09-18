class Room < ApplicationRecord
  validates_uniqueness_of :name
  # this scope to fetch all public rooms for our room list
  scope :public_rooms, -> {where(is_private: false)}
end
