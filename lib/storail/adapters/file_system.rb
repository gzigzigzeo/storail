# TODO: Support streams (StringIO)
module Storail::Adapters
  class FileSystem
    def initialize(root_path)
      @root_path = root_path
    end

    def store(id, file)
      path = absolute_path(id)

      FileUtils.mkdir_p(File.dirname(path))
      FileUtils.cp(file.path, path)
    end

    def retrieve(id)
      path = absolute_path(id)
      File.open(path)
    end

    private

    def absolute_path(id)
      File.join(@root_path, id)
    end
  end
end