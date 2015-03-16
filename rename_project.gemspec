# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rename_project/version'

Gem::Specification.new do |spec|
  spec.name          = "rename_project"
  spec.version       = RenameProject::VERSION
  spec.authors       = ["Masafumi Yokoyama"]
  spec.email         = ["myokoym@gmail.com"]
  spec.summary       = %q{A rename tool for projects that are managed on Git.}
  spec.homepage      = "https://github.com/myokoym/rename_project"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) {|f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("inplace")

  spec.add_development_dependency("bundler", "~> 1.6")
  spec.add_development_dependency("rake")
end
