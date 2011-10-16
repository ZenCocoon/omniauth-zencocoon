# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-zencocoon/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'hashie', '~> 1.2'
  gem.add_dependency 'omniauth', '~> 1.0.0.pr2'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0.0.pr2'

  gem.authors = ["Sebastien Grosjean"]
  gem.email = ["public@zencocoon.com"]
  gem.description = %q{An OmniAuth 1.0 strategy for ZenCocoon OAuth2 provider.}
  gem.summary = %q{n OmniAuth 1.0 strategy for ZenCocoon OAuth2 provider.}
  gem.homepage = "https://github.com/ZenCocoon/omniauth-zencocoon"

  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name = "omniauth-zencocoon"
  gem.require_paths = ["lib"]
  gem.version = OmniAuth::ZenCocoon::VERSION
end