class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    secs = @seconds
    hours = secs / 3600
    minutes = (secs % 3600)/60
    sec = secs % 60

    sprintf("%02d:%02d:%02d", hours, minutes, sec )
  end
end
