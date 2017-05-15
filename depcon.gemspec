# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'depcon/version'

Gem::Specification.new do |spec|
  spec.name          = "depcon"
  spec.version       = Depcon::VERSION
  spec.authors       = ["t4traw"]
  spec.email         = ["t4traw@gmail.com"]

  spec.summary       = %q{Winで使われている代表的な機種依存文字を変換するgem}
  spec.description   = %q{Winで使われている代表的な機種依存文字を変換するgem}
  spec.homepage      = "https://github.com/t4traw/depcon"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "minitest-reporters"
  spec.add_development_dependency "pry"
end
