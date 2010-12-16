# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'gus/version'

Gem::Specification.new do |s|
  s.name        = "gus"
  s.version     = Gus::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = []
  s.email       = []
  s.homepage    = "http://rubygems.org/gems/gus"
  s.summary     = "Simple Ruby API for the Google Url Shortener"
  s.description = "Gus provides a simple Ruby wrapper around the Google Url shortener."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "gus"

  s.add_development_dependency "bundler", ">= 1.0.0.rc.5"
  s.add_dependency "crack", ">= 0.1.8"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'
end