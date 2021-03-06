# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-leftronic"
  spec.version       = "0.0.4"
  spec.authors       = ["toyama0919"]
  spec.email         = ["toyama0919@gmail.com"]
  spec.description   = %q{Leftronic output plugin for Fluentd.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/toyama0919/fluent-plugin-leftronic/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
  spec.add_development_dependency "fluent-plugin-groupcounter"
  spec.add_development_dependency "apache-loggen"
  spec.add_dependency "fluentd"
  spec.add_dependency "leftronic"
end
