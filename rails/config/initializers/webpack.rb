Rails.application.configure do
  config.webpack.dev_server.manifest_host = ENV['WEBPACK_REMOTE_HOST']
  config.webpack.dev_server.manifest_port = ENV['WEBPACK_REMOTE_PORT']
end
