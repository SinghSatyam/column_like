lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
Gem::Specification.new do |s|
  s.name        = 'column_like'
  s.version     = '0.0.0'
  s.date        = '2015-05-03'
  s.summary     = "Column Like"
  s.description = "Column Like"
  s.authors     = ["Satyam Singh"]
  s.email       = 'satyam.mgs@gmail.com'
  s.homepage    = 'http://rubygems.org/gems/hola'
  s.license       = 'MIT'
  s.files = Dir.glob("{lib}/**/*")
  s.require_path = 'lib'
  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake", '~> 0'
end