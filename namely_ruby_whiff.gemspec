Gem::Specification.new do |spec|
  spec.name = 'namely_ruby_whiff'
  spec.version = '0.0.2'
  spec.summary = 'A set of configurations to support high quality Ruby code.'
  spec.authors = ['jim.herring@namely.com']
  spec.files = []
  spec.required_ruby_version = '>= 2.5.0'

  spec.add_dependency 'rubocop', '>= 0.72'
  spec.add_dependency 'rubocop-changes'
  spec.add_dependency 'rubocop-performance'
  spec.add_dependency 'rubocop-rails'
  spec.add_dependency 'rubocop-rspec'
end
