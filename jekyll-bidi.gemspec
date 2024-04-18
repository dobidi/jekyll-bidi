# frozen_string_literal: true

require_relative "lib/jekyll-bidi/version"

Gem::Specification.new do |spec|
  spec.name = "jekyll-bidi"
  spec.version = JekyllBidi::VERSION
  spec.authors = ["Mostafa Ahangarha"]
  spec.email = ["ahangarha@riseup.net"]
  spec.license = "LGPL-3.0-or-later"

  spec.summary = "Add bidirectional text support to Jekyll projects."
  spec.homepage = "https://framagit.org/dobidi/jekyll-bidi"
  spec.required_ruby_version = ">= 2.7"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://framagit.org/dobidi/jekyll-bidi/-/blob/main/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ spec/ .git])
    end
  end

  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "bidify", "~> 0.3.1"
end
