
  
  
require 'time'

# Timer class to record the time in seconds
# And display a nicely formatted string
class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  attr_reader :seconds
  attr_writer :seconds

  def time_string
    hours = find_hours(@seconds).to_s
    minutes = find_minutes(@seconds).to_s
    seconds = @seconds.to_s
    hours = hours.length < 2 ? "0#{hours}" : hours
    minutes = minutes.length < 2 ? "0#{minutes}" : minutes
    seconds = seconds.length < 2 ? "0#{seconds}" : seconds
    "#{hours}:#{minutes}:#{seconds}"
  end

  private

  def find_minutes(seconds)
    mins = 0
    while seconds >= 60
      mins += 1
      seconds -= 60
    end
    @seconds = seconds
    mins
  end

  def find_hours(seconds)
    hrs = 0
    while seconds >= 3600
      hrs += 1
      seconds -= 3600
    end
    @seconds = seconds
    hrs
  end
end
  