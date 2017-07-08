Resque.redis = ENV["REDIS_RESQUE"] || "redis://localhost:6379"
Resque.redis.namespace = ENV["REDIS_RESQUE_NAMESPACE"] if ENV["REDIS_RESQUE_NAMESPACE"]

ENV['RESQUE_WEB_HTTP_BASIC_AUTH_USER'] = ENV['RESQUE_USER'] || "admin"
ENV['RESQUE_WEB_HTTP_BASIC_AUTH_PASSWORD'] = ENV['RESQUE_PASSWORD'] || "secret"

require "resque_web"

Rails.application.routes.draw do
  mount ResqueWeb::Engine => "/"
end
