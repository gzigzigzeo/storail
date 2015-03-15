require "simplecov"

SimpleCov.start do
  add_filter "spec"
end

if ENV["CODECLIMATE_REPO_TOKEN"]
  require "codeclimate-test-reporter"
  CodeClimate::TestReporter.start
end

require "storail"

RSpec.configure do |config|
  config.order = :random
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.before do
    FileUtils.rm_rf("tmp")
  end
end
