# frozen_string_literal: true

require_relative 'lib/tiktok/version'

Gem::Specification.new do |spec|
  spec.name = 'tt-common'
  spec.version = TikTok::TT_COMMON_VERSION
  spec.summary = 'TT Common'
  spec.homepage = 'https://github.com/kandayo/tt-common'
  spec.license = 'MIT'

  spec.author = 'kandayo'
  spec.email = 'kdy@absolab.xyz'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.files = Dir['*.{md,txt}', '{lib}/**/*']
  spec.require_path = 'lib'

  spec.required_ruby_version = Gem::Requirement.new('>= 3.0.0')
end
