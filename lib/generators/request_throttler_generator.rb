require 'rails/generators/base'

class RequestThrottlerGenerator < Rails::Generators::Base

  source_root File.expand_path("../", __FILE__)

  def copy_initializer
    copy_file 'request_throttler.rb', 'config/initializers/request_throttler.rb'
  end
end
