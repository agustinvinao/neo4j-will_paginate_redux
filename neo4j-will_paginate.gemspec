# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "neo4j-will_paginate/version"

Gem::Specification.new do |s|
  s.name        = "neo4j-will_paginate"
  s.version     = Neo4j::WillPaginate::VERSION
  s.authors     = ["Dmytrii Nagirniak", "Andreas Ronge", "Chris Grigg"]
  s.email       = ["dnagir@gmail.com", "andreas.ronge@gmail.com", "chris@subvertallmedia.com"]
  s.homepage    = "https://github.com/dnagir/neo4j-will_paginate"
  s.summary     = %q{Integration between neo4j.rb 3.0 and will_paginate.}
  s.description = s.summary

  s.rubyforge_project = "neo4j-will_paginate"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_runtime_dependency "activesupport", "~> 4.0"
  s.add_runtime_dependency "will_paginate", "~> 3.0"
  s.add_runtime_dependency "neo4j", "~> 3.0.0.alpha.8"
end
