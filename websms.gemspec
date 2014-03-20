# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'websms/version'

Gem::Specification.new do |spec|
  spec.name          = "websms"
  spec.version       = Websms::VERSION
  spec.authors       = ["Vasily Shmelev"]
  spec.email         = ["sleephunter@gmail.com"]
  spec.summary       = %q{SMS HTTP API to websms.ru}
  spec.description   = %q{This gem is intend to siplify manage websms.ru SMS gateway HTTP API from Ruby apps.}
  spec.homepage      = "https://github.com/vs-adm/websms"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", '~> 0'
  spec.add_runtime_dependency "curb", '~> 0'
  spec.add_runtime_dependency "iconv", '~> 0'
end
