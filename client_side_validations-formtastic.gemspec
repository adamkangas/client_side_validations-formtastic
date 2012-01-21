# -*- encoding: utf-8 -*-
require File.expand_path('../lib/client_side_validations/formtastic/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brian Cardarella"]
  gem.email         = ["bcardarella@gmail.com"]
  gem.description   = %q{Formtastic Plugin for ClientSideValidaitons}
  gem.summary       = %q{Formtastic Plugin for ClientSideValidations}
  gem.homepage      = 'https://github.com/dockyard/client_side_validations-formtastic'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files -- {lib/*,vendor/*,*.gemspec}`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'client_side_validations-formtastic'
  gem.require_paths = ['lib']
  gem.version       = ClientSideValidations::Formtastic::VERSION

  gem.add_dependency 'client_side_validations', '~> 3.2.0.beta.1'
  gem.add_dependency 'formtastic', '~> 2.0.0'

  gem.add_development_dependency 'actionpack', '~> 3.2.0'

  # For QUnit testing
  gem.add_development_dependency 'sinatra', '~> 1.0'
  gem.add_development_dependency 'shotgun'
  gem.add_development_dependency 'thin'
  gem.add_development_dependency 'json'
end