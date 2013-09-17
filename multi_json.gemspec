# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.name          = 'multi_json'
  gem.version       = '1.5.2'
  gem.authors       = ['Jonathan Dance']
  gem.email         = ['rubygems@wuputah.com']
  gem.description   = %q{MultiJson Hardcore OJ is a replacement for MultiJson that just uses OJ}
  gem.summary       = %q{MultiJson Hardcore OJ is a replacement for MultiJson that just uses OJ. Therefore, it's faster.}
  gem.homepage      = 'https://github.com/wuputah/multi_json-hardcore-oj'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'oj'
end
