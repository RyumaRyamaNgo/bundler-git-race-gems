# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name        = "race_gem_a"
  spec.version     = "1.0.0"
  spec.authors     = ["repro"]
  spec.summary     = "Minimal gem A for reproducing the Bundler parallel git race."
  spec.files       = ["lib/race_gem_a.rb"]
  spec.require_paths = ["lib"]
  # Keep it loose so it resolves against the latest stable Ruby.
  spec.required_ruby_version = ">= 3.0"
end
