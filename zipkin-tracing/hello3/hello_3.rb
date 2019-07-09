require 'sinatra'
require 'rack'
require 'zipkin-tracer'


get '/' do
  "container 3"
end


ZIPKIN_TRACER_CONFIG = {
  service_name: 'backend',
  sample_rate: 1.0,
  json_api_host: 'http://172.17.0.1:9411'
}.freeze

use ZipkinTracer::RackHandler, ZIPKIN_TRACER_CONFIG