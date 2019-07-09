require 'sinatra'
require 'rack'
require 'zipkin-tracer'
require 'faraday'


ZIPKIN_TRACER_CONFIG = {
  service_name: 'backend-2',
  sample_rate: 1.0,
  json_api_host: 'http://172.17.0.1:9411'
}.freeze

use ZipkinTracer::RackHandler, ZIPKIN_TRACER_CONFIG


conn = Faraday.new(:url => 'http://172.17.0.1:4000/') do |faraday|
  faraday.use ZipkinTracer::FaradayHandler, 'backend' # 'service_name' is optional (but recommended)
  # default Faraday stack
  faraday.request :url_encoded
  faraday.adapter Faraday.default_adapter
end

get '/' do
   conn.get.body.to_s + " container 1"
end

