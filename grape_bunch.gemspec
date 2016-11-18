Gem::Specification.new do |s|
  s.name        = 'grape_bunch'
  s.version     = '0.0.2'
  s.date        = '2016-11-15'
  s.summary     = "Binds together grape dependencies"
  s.description = "Set of grape dependencies which will be installed inside rails app, provides rails generators."
  s.authors     = ["Mykyta Troianov"]
  s.email       = 'nicktroyanov@gmail.com'
  s.files       = Dir.glob("{lib}/**/*")
  s.homepage    = 'http://rubygems.org/gems/grape_bunch'
  s.license     = 'MIT'
  s.add_runtime_dependency 'grape', '0.18.0'
  s.add_runtime_dependency 'grape-entity', '0.5.1'
  s.add_runtime_dependency 'grape-swagger', '0.25.0'
  s.add_runtime_dependency 'grape-swagger-entity', '0.1.4'
  s.add_runtime_dependency 'grape-swagger-rails', '0.3.0'
  s.add_runtime_dependency 'hashie-forbidden_attributes', '0.1.1'
end
