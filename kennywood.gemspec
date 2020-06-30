
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cp_coasters/version"

Gem::Specification.new do |spec|
  spec.name          = "cp_coasters"
  spec.version       = CpCoasters::VERSION
  spec.authors       = ["catprice444"]
  spec.email         = ["catprice444@gmail.com"]

  spec.summary       = "Rollercoasters at Cedar Point"
  spec.description   = "Provides details on the different rollercoasters at Cedar Point"
  # spec.homepage      = "Put your gem's website or public repo URL here."
  spec.license       = "MIT"

    # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
    # delete this section to allow pushing this gem to any host.
    if spec.respond_to?(:metadata)
      spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
   else
     raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
   end

 spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
 spec.bindir        = "exe"
 spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
 spec.require_paths = ["lib"]


  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
end
