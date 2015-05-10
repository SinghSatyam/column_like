lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
Gem::Specification.new do |s|
  s.name        = 'column_like'
  s.version     = '0.0.8'
  s.date        = Date.today.to_s
  s.summary     = "Allows ActiveRecord Model to use like query"
  s.description = "Allows You To Use Like Query For Any Model. "
  s.authors     = ["Satyam Singh"]
  s.email       = 'satyam.mgs@gmail.com'
  s.homepage    = 'http://singhsatyam.github.io/column_like'
  s.license       = 'MIT'
  s.files = Dir.glob("{lib}/**/*")
  s.require_path = 'lib'
  s.post_install_message = <<'EOS'
==== Post Install Message From Column Like ====
Please run 'rails generate column_like:install' from your terminal to finish installating column_like.
===============================================
EOS
  s.required_ruby_version = '>= 1.9.3'
  s.add_runtime_dependency 'activerecord', '>= 3.0.0'
end