# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby/utils/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruby-utils'
  spec.version       = Ruby::Utils::VERSION
  spec.authors       = ['linqueta']
  spec.email         = ['tecnologia@petlove.com.br']

  spec.licenses      = ['MIT']
  spec.summary       = 'Ruby utils'
  spec.description   = 'Ruby utils'
  spec.homepage      = 'https://github.com/petlove/ruby-utils'

  spec.files         = Dir['{lib}/**/*', 'CHANGELOG.md', 'MIT-LICENSE', 'README.md']
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.2.10'

  spec.add_development_dependency 'bundler', '~> 1.17.3'
  spec.add_development_dependency 'rake', '~> 10.0'
end
