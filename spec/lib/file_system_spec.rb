require "spec_helper"

describe Storail::Adapters::FileSystem do
  let(:fixture_file_name) { "LICENSE.txt" }
  let(:fixture_file) { "foo/bar/#{fixture_file_name}" }
  let(:root_path) { "tmp" }

  subject { described_class.new(root_path) }

  it "#store" do
    subject.store(fixture_file, File.open(fixture_file_name))

    expect(File.exist?("#{root_path}/#{fixture_file}")).to be
  end

  it "#retrieve" do
    subject.store(fixture_file, File.open(fixture_file_name))

    result = subject.retrieve(fixture_file)

    expect(result).to be_kind_of(File)
    expect(result.path) == File.join(root_path, fixture_file)
  end
end
