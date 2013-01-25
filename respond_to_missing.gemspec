# -*- encoding: utf-8 -*-

require File.expand_path('../lib/respond_to_missing/version', __FILE__)
require 'date'

Gem::Specification.new do |s|
  s.name     = 'respond_to_missing'
  s.version  = RespondToMissing::Version
  s.date     = Date.today
  s.platform = Gem::Platform::RUBY

  s.summary     = 'Defines Object#respond_to_missing? and patches Object#respond_to?'
  s.description = 'Defines Object#respond_to_missing? and patches Object#respond_to? unless this functionality has already been implemented (ruby versions 1.9+)'

  s.author   = 'Sean Huber'
  s.email    = 'shuber@huberry.com'
  s.homepage = 'http://github.com/shuber/respond_to_missing'

  s.require_paths = ['lib']

  s.files      = Dir['{bin,lib}/**/*'] + %w(MIT-LICENSE Rakefile README.rdoc)
  s.test_files = Dir['test/**/*']
end