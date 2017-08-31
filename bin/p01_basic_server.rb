require 'rack'

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  res['Content-Type'] = 'text/html'
  #res.write(env["PATH_INFO"] )   # another way to do it
  res.write(req.path_info)
  res.finish

end

Rack::Server.start(
  app: app,
  Port: 2999
)
