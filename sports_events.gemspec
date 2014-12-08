# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sports_events/version'

Gem::Specification.new do |spec|
  spec.name          = "sports_events"
  spec.version       = SportsEvents::VERSION
  spec.authors       = ["jyootai"]
  spec.email         = ["jyootg@gmail.com"]
  spec.summary       = %q{Query sports events}
  spec.description   = %q{The gem help you query sports events simply}
  spec.homepage      = "https://github.com/jyootai/sports_events"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
