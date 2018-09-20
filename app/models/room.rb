class Room < ApplicationRecord
  has_many :members

  def member(user)
    Member.find_by(room_id: self.id, user: user)
  end
end
