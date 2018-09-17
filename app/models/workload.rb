class Workload < ApplicationRecord
  belongs_to :room

  POMOTIME = 25
  # POMOTIME = 0.1

  CHATTIME = 5
  # CHATTIME = 0.1

  def can_chat?
    remain(POMOTIME + CHATTIME) > 0
  end

  def remain(total = POMOTIME)
    (total * 60 - (Time.now - created_at)).to_i
  end

  def min
    (remain / 60).to_i
  end

  def sec
    remain - min * 60
  end
end
