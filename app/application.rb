# If it's before noon, greet the user with "Good Morning!"

#If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.
require 'date'

class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.strftime("%H:%M") < "12:00"
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end #end ifelse

    resp.finish
  end #end call

end #end class
