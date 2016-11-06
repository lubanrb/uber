class Uber
  class Lublog < Luban::Deployment::Script
    parameter :central_archives_host
    parameter :central_archives_path
    parameter :skip_archive, default: false

    protected

    def set_parameters
      super
      set :central_archives_path, luban_root_path.join('central-archives')
    end

    def after_configure
      super
      unless skip_archive
        set :central_archives_host, primary(:archive)
      end
    end
  end
end
