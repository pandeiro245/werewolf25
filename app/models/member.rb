class Member < ApplicationRecord
  belongs_to :room
  belongs_to :user
  belongs_to :role
end
