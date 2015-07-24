# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sortr/version'

Gem::Specification.new do |spec|
  spec.name          = "sortr"
  spec.version       = Sortr::VERSION
  spec.authors       = ["jbranchaud"]
  spec.email         = ["jbranchaud@gmail.com"]

  spec.summary       = %q{Sorting Algorithms in a Gem}
  spec.description   = %q{A collection of sorting algorithms all packaged up in a Gem ready for you to use to your hearts desire.}
  spec.homepage      = "https://github.com/jbranchaud/sortr"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
