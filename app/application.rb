
class Application

  def call(env)
    resp = Rack::Response.new

    current_hour = Time.now.hour

    day_part = "Morning" if current_hour < 12
    day_part = "Afternoon" if current_hour >= 12

    resp.write "Good #{day_part}!"
    resp.finish

  end

end
