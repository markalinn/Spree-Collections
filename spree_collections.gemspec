# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_collections'
  s.version     = '1.0.0'
  s.summary     = 'Spree Collections'
  s.description = 'Adds a section of the site that shows Collections which is really image galleries not necessarily linked to any prodoucts'
  s.required_ruby_version = '>= 1.8.7'

   s.author            = 'Mark Linn'
   s.email             = 'marklinn@xwcsolutions.com'
   s.homepage          = 'http://www.xwcsolutions.com'

  #s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1'

  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.7'
  s.add_development_dependency 'sqlite3'
end
