


class Application

  def format_time
    curr_time = Time.now
    time_string = curr_time.inspect
    split_time = time_string.split(" ")
  end

  def before_noon?(time)
    timestamp = time[1]
    hour = timestamp[0..1].to_i
    if (hour >= 12)
      return false
    end
    return true
  end

  def call(env)
    resp = Rack::Response.new

    curr_time = format_time

    if before_noon?(curr_time)
      resp.write("Good Morning!")
    else
      resp.write("Good Afternoon!")
    end

    resp.finish

  end

end
