# class Application
#   def call(env)
#     resp = Rack::Response.new
#
#     if Time.now.hour < 12
#       resp.write "Good Morning"
#       #before noon = greet user with "Good Morning"
#       #after noon = greet user with "Good Afternoon!" -- anytime after 12 is afternoon
#     else
#       resp.write "Good Afternoon"
#
#     end
#     resp.finish
#   end
#
# end


#for solutions, we're setting the condition of afternoon first so that it'll filter through if thats true & if not, it'll say good morning.

class Application
  def call(env)
    resp = Rack::Response.new
    now = Time.now #now is added since i guess we're measuring its now (local var) -- & setting class of Time.now
    if now.hour >= 12 #calling local var now + the method .hour 
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end


end
