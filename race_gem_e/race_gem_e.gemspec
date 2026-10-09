# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name        = "race_gem_e"
  spec.version     = "1.0.0"
  spec.authors     = ["repro"]
  spec.summary     = "Minimal gem E for reproducing the Bundler parallel git race."
  spec.files       = ["lib/race_gem_e.rb"]
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 3.0"
end
