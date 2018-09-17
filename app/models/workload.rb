class Workload < ApplicationRecord
  belongs_to :room
  def remain
    # total = 0.1
    total = 25
    (total * 60 - (Time.now - created_at)).to_i
  end

  def min
    (remain / 60).to_i
  end

  def sec
    remain - min * 60
  end
end
