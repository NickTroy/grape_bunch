Gem::Specification.new do |s|
  s.name        = 'grape_bunch'
  s.version     = '0.0.1'
  s.date        = '2016-11-15'
  s.summary     = "Binds together grape dependencies"
  s.description = "Set of grape dependencies which will be installed inside rails app, provides rails generators."
  s.authors     = ["Mykyta Troianov"]
  s.email       = 'nicktroyanov@gmail.com'
  s.files       = Dir.glob("{lib}/**/*")
  s.homepage    = 'http://rubygems.org/gems/grape_bunch'
  s.license     = 'MIT'
  s.add_development_dependency 'rails', '~> 5.0'
end
