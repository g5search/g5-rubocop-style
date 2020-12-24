# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "g5/rubocop_style/version"

Gem::Specification.new do |spec|
  spec.name          = "g5-rubocop-style"
  spec.version       = G5::RubocopStyle::VERSION
  spec.authors       = ['Jazo Madrid', 'G5']
  spec.email         = ['jazo.madrid-c@getg5.com']

  spec.summary       = 'G5 rubocop style guides and shared style configs.'
  spec.homepage      = 'https://github.com/g5search/g5-rubocop-style'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'

    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/g5search/g5-rubocop-style'
    spec.metadata['changelog_uri'] = 'https://github.com/g5search/g5-rubocop-style/CHANGELOG.md'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added
  # into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 0.90.0"
  spec.add_dependency "rubocop-rspec"
  spec.add_dependency "rubocop-rails"
  spec.add_dependency "rubocop-performance"
  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
end
