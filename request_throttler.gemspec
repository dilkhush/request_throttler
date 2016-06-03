# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'request_throttler/version'

Gem::Specification.new do |spec|
  spec.name          = "request_throttler"
  spec.version       = RequestThrottler::VERSION
  spec.authors       = ["Dilkhush Soni"]
  spec.email         = ["dilkhushsoni2010@gmail.com"]
  spec.summary       = %q{This gem will help to throttler your request}
  spec.description   = %q{This gem will help to throttler your request}
  spec.homepage      = %q{https://github.com/dilkhush/request_throttler}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
