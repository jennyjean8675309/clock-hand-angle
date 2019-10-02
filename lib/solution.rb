require "pry"

# Given a string representing the time on a digital clock (e.g., "12:25", "3:27") write a method to determine the angle between the hands of an analog clock. Assume that both the hour and the minute hands move every minute by the appropriate amount.

# What I know
# a clock is a circle, which has 360 degrees total
# each hour would represent 360/12 degrees on the clock - 30 degrees
# each minute would represent 360/60 degrees on the clock - 6 degrees
# each hour hand also moves an incremental amount as the minutes progress - 30 degrees (each hour block)
# minutes/60 (the fraction of the hour) = degrees/30 (the same fraction of degrees per hour)

def clock_angle(time)
    time_array = time.split(":")
    hour = time_array[0].to_i
    minutes = time_array[1].to_i

    hour_degree = hour * 30
    minute_degree = minutes * 6

    # determining the hour hand's progress within the hour
    x = minutes * 30
    hour_plus_minutes = x/60.0

    difference = ((hour_degree + hour_plus_minutes) - minute_degree).abs
    if difference > 180
        360 - difference
    else 
        difference
    end
end

puts clock_angle("3:15")
