$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name = 'administrate-field-carrierwave'
  s.version = '0.0.6'
  s.authors = ['clevertechru']
  s.homepage = 'https://github.com/clevertechru/administrate-field-carrierwave'
  s.summary = 'A Rails engine for creating super-flexible admin dashboards'
  s.license = 'MIT'

  s.require_paths = ['lib']
  s.files = `git ls-files`.split("\n")

  s.add_dependency 'administrate', '>= 0.9', '< 1.0'
  s.add_dependency 'rails', '>= 4.2', '< 6'
  s.add_dependency 'carrierwave', '>= 1.2.2', '< 2.0'
end