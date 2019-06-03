class Application

  def call(env)
    resp = Rack::Response.new
    if Time.now.to_s.split(" ")[1].split(":")[0].to_i > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
end
