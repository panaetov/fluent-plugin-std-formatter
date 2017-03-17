# coding: utf-8
Gem::Specification.new do |gem|
  gem.name          = "fluent-plugin-std-formatter"
  gem.version       = "0.0.5"
  gem.authors       = ["Alexey Panaetov"]
  gem.email         = ["panaetovaa@gmail.com"]
  gem.description   = %q{}
  gem.summary       = %q{}
  gem.homepage      = ""
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "fluentd"
end
