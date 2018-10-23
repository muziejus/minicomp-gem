# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "minicomp/version"

Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = "2.2.2"
  s.required_ruby_version = ">= 2.3.0"

  s.name          = "minicomp"
  s.version       = Minicomp::VERSION
  s.license       = "GPL-3.0"

  s.summary       = "A tool for minimal computing"
  s.description   = "Minicomp provides a suite of commands for computing minimally"

  s.authors       = ["Moacir P. de Sá Pereira"]
  s.email         = "github@moacir.moacir.com"
  s.homepage      = "https://github.com/muziejus/minicomp-gem"

  all_files       = `git ls-files -z`.split("\x0")
  s.files         = all_files.grep(%r!^(bin|lib|rubocop)/|^.rubocop.yml$!)
  s.executables   = all_files.grep(%r!^bin/!) { |f| File.basename(f) }
  s.bindir        = "bin"
  s.require_paths = ["lib"]

  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w(README.md LICENSE)

  s.add_runtime_dependency("mercenary", "~> 0.3.3")
  #s.add_runtime_dependency("safe_yaml",             "~> 1.0")
end
