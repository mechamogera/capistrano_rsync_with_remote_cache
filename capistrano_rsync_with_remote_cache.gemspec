# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano_rsync_with_remote_cache/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano_rsync_with_remote_cache"
  spec.version       = CapistranoRsyncWithRemoteCache::VERSION
  spec.has_rdoc      = true
  spec.authors       = ['Patrick Reagan', 'Mark Cornick']
  spec.email         = ['patrick.reagan@viget.com']
#  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{A deployment strategy for Capistrano 2.0 which combines rsync with a remote cache, allowing fast deployments from SCM servers behind firewalls.}
  spec.homepage      = "http://www.viget.com/extend/"
#  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency('capistrano', '>=2.1.0')
end
