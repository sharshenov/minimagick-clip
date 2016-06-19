# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mini_magick_clip/version'

Gem::Specification.new do |spec|
  spec.name          = "mini_magick_clip"
  spec.version       = MiniMagickClip::VERSION
  spec.authors       = ["Rustam Sharshenov"]
  spec.email         = ["rustam@sharshenov.com"]

  spec.summary       = "Clipping images with minimagick & mask file"
  spec.description   = "Clipping images with minimagick & mask file"
  spec.homepage      = "https://github.com/sharshenov/minimagick-clip"
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

  spec.add_dependency "mini_magick"

  spec.add_development_dependency "bundler", "~> 1.11"
end
