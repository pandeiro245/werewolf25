module ApplicationHelper
  def show_time(workload)
    if workload.remain > 0
      "#{zero(workload.min)}:#{zero(workload.sec)}"
    else
      "done!"
    end
  end

  def zero(int)
    return int.to_s if int >= 10
    "0#{int}"
  end
end
