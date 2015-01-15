#!/bin/env ruby
#
require 'sinatra'
require 'redis'

configure do
  redis = Redis.new(:host => ENV['DB_PORT_6379_TCP_ADDR'], :port => ENV['DB_PORT_6379_TCP_PORT'])
  set :redis, redis
end

get '/' do
  settings.redis.get('counter')
end

post '/' do
  settings.redis.incr('counter')
  204
end

put '/' do
  settings.redis.decr('counter')
  204
end
