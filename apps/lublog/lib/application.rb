class Uber
  class Lublog < Luban::Deployment::Script
    parameter :central_archives_host
    parameter :central_archives_path

    protected

    def set_parameters
      super
      set :central_archives_path, luban_root_path.join('central-archives')
    end

    def after_configure
      super
      set :central_archives_host, primary(:archive)
      setup_logrotate
    end

    def setup_logrotate
      cronjob schedule: "*/#{logrotate_interval} * * * *",
              command: ->{ "./log-archiver #{control_file_path}" },
              output: "lublog.log"
    end
  end
end
