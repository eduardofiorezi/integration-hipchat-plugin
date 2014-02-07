# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jumpup-hipchat/version"

Gem::Specification.new do |s|
  s.name        = "jumpup-hipchat"
  s.version     = Jumpup::Hipchat::VERSION
  s.authors     = ["HE:labs"]
  s.email       = ["tech@helabs.com.br"]
  s.homepage    = "https://github.com/Helabs/jumpup-hipchat"
  s.summary     = %q{Hipchat support to integration}
  s.description = %q{Few rake tasks created to notify deployments made with jumpup}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "rake"
  s.add_runtime_dependency "hipchat"
end
