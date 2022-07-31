class Room < ApplicationRecord
    validates :room_name, presence: true
    validates :room_introduction, presence: true
    validates :room_charge, presence: true
    validates :room_address, presence: true

end
