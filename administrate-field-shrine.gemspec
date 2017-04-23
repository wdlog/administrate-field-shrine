# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'administrate/field/shrine/version'

Gem::Specification.new do |spec|
  spec.name          = "administrate-field-shrine"
  spec.version       = Administrate::Field::Shrine::VERSION
  spec.authors       = ["Ken Zheng"]
  spec.email         = ["zhdhui@gmail.com"]

  spec.summary       = %q{Shrine field plugin for Administrate.}
  spec.description   = %q{Integrates Shrine as a field for Administrate in Rails apps.}
  spec.homepage      = "https://github.com/catsky/administrate-field-shrine"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://localhost:3000"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'administrate', '~> 0.5.0'
  spec.add_dependency 'rails', '>= 4.2', '< 5.1'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
