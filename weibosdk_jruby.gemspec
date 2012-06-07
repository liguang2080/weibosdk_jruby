# -*- encoding: utf-8 -*-
require File.expand_path('../lib/weibosdk_jruby/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["liguang"]
  gem.email         = ["lg2046@gmail.com"]
  gem.description   = %q{基于官方提供的java sdk接口}
  gem.summary       = %q{用于jruby api与官方一样，调用方式不一样}
  gem.homepage      = "http://github.com/lg2046/weibosdk_jruby"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "weibosdk_jruby"
  gem.require_paths = ["lib"]
  gem.version       = WeibosdkJruby::VERSION
end
