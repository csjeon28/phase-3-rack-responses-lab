class Application
    def call(env)
        resp = Rack::Response.new
        req = Rack::Response.new(env)

        time = Time.now
    
        if time.hour < 12
            resp.write "Good Morning"
        elsif time.hour >= 12
            resp.write "Good Afternoon"
        end

        resp.finish
    end

end