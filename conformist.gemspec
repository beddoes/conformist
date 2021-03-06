# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "conformist/version"

Gem::Specification.new do |s|
  s.name                 = "conformist"
  s.version              = Conformist::VERSION
  s.platform             = Gem::Platform::RUBY
  s.authors              = ["Tate Johnson"]
  s.email                = ["tate@tatey.com"]
  s.homepage             = "https://github.com/tatey/conformist"
  s.summary              = %q{Bend CSVs to your will with declarative schemas.}
  s.description          = %q{Bend CSVs to your will with declarative schemas.}
  s.post_install_message = <<-EOS
********************************************************************************

  Upgrading from <= 0.0.3? You should be aware of breaking changes. See
  https://github.com/tatey/conformist and skip to "Upgrading from 0.0.3 to 
  0.1.1" to learn more. Conformist will raise helpful messages where necessary.

********************************************************************************  
EOS

  s.rubyforge_project = "conformist"

  s.required_ruby_version = '>= 1.8.7'
  
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'spreadsheet'

  if ['1.8.7', 'java'].include? RUBY_VERSION
    s.add_development_dependency 'fastercsv'
  end

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
