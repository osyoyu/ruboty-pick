lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruboty/pick/version"

Gem::Specification.new do |spec|
  spec.name          = "ruboty-pick"
  spec.version       = Ruboty::Pick::VERSION
  spec.authors       = ["osyoyu"]
  spec.email         = ["osyoyu@osyoyu.com"]

  spec.summary       = %q{A Ruboty plugin for picking 1 out of N.}
  spec.homepage      = "https://github.com/osyoyu/ruboty-pick"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = []
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
end
