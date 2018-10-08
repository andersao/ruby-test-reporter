require "./lib/code_climate/test_reporter/version"

Gem::Specification.new do |spec|
  spec.name = "codeclimate-test-reporter"
  spec.version = CodeClimate::TestReporter::VERSION
  spec.authors = ["Bryan Helmkamp", "Code Climate"]
  spec.email = ["bryan@brynary.com", "hello@codeclimate.com"]
  spec.description = "Collects test coverage data from your Ruby test suite and sends it to Code Climate's hosted, automated code review service. Based on SimpleCov."
  spec.summary = "Uploads Ruby test coverage data to Code Climate."
  spec.homepage = "https://github.com/codeclimate/ruby-test-reporter"
  spec.license = "MIT"

  spec.files = `git ls-files bin lib config LICENSE.txt README.md`.split($/)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }.reject { |f| f == "ci" }

  spec.required_ruby_version = ">= 1.9"
  spec.add_runtime_dependency "simplecov", "<= 0.13"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"

  spec.post_install_message = %q(
  Code Climate's codeclimate-test-reporter gem has been deprecated in favor of
  our language-agnostic unified test reporter. The new test reporter is faster,
  distributed as a static binary so dependency conflicts never occur, and
  supports parallelized CI builds & multi-language CI configurations.

  Please visit https://docs.codeclimate.com/v1.0/docs/configuring-test-coverage
  for help setting up your CI process with our new test reporter.
  )
end
