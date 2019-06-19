
require 'sinatra'

require 'opentracing'
require 'jaeger/client'
require 'rack/tracer'

OpenTracing.global_tracer = Jaeger::Client.build(host: '172.17.0.1', port: 6831, service_name: 'hello-third')

use Rack::Tracer

get '/' do
  "container 3"
end
