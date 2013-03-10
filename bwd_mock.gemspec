# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bwd_mock/version'

Gem::Specification.new do |gem|
  gem.name          = "bwd_mock"
  gem.version       = BwdMock::VERSION
  gem.authors       = ["Jess Brown"]
  gem.email         = ["jess@brownwebdesign.com"]
  gem.description   = %q{Internal tool for BrownWebsites.com}
  gem.summary       = %q{Mock rails templates in Serve}
  gem.homepage      = "www.github.com/jess/bwd_mock"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency "serve"
end
