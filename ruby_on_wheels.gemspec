# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_on_wheels/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruby_on_wheels'
  spec.version       = RubyOnWheels::VERSION
  spec.authors       = ['reemplazable', 'eLafo', 'mcabrera', 'sgomez', 'rperez', 'ace']
  spec.email         = ['jlbarrera@aspgems.com', 'jlafora@aspgems.com', 'martin@aspgems.com', 'sgomez@aspgems.com', 'rebeca@aspgems.com', 'andres@aspgems.com']

  spec.summary       = 'The exercises in the book rebuilding rails by Noah Gibbs'
  spec.description   = 'Some aspgems developers are gathered together to forge the exercises in the book rebuilding rails by Noah Gibbs'
  spec.homepage      = 'https://github.com/eLafo/rubyonwheels'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'rack', '~> 1.6', '>= 1.6.0'
  spec.add_development_dependency 'rack-test', '~> 0'
  spec.add_development_dependency 'minitest', '~> 0'
end
