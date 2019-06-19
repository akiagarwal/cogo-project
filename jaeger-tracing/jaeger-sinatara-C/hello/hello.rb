require 'sinatra'

require 'opentracing'
require 'jaeger/client'
require 'rack/tracer'

OpenTracing.global_tracer = Jaeger::Client.build(host: '172.17.0.1', port: 6831, service_name: 'hello')

use Rack::Tracer

get '/' do
   "#{hello} container 1"
end

def hello
  client = Net::HTTP.new("172.17.0.1",2000)
  req = Net::HTTP::Get.new("/")
  OpenTracing.inject(env['rack.span'].context, OpenTracing::FORMAT_RACK, req)
  client.request(req).body
end
