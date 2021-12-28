# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "fluent-plugin-gcloud-pubsub-another"
  gem.description = "Google Cloud Pub/Sub input/output plugin for Fluentd event collector"
  gem.license     = "MIT"
  gem.homepage    = "https://github.com/im-ikeda/fluent-plugin-gcloud-pubsub-another"
  gem.summary     = gem.description
  gem.version     = "1.6.0"
  gem.authors     = ["Takashi IKEDA"]
  gem.email       = "im.ikeda@gmail.com"
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_runtime_dependency "fluentd", [">= 0.14.15", "< 2"]
  gem.add_runtime_dependency "google-cloud-pubsub", "~> 2.3.1"

  gem.add_development_dependency "bundler"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "test-unit"
  gem.add_development_dependency "test-unit-rr"
end
