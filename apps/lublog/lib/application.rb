class Uber
  class Lublog < Luban::Deployment::Application
    module Parameters
      extend Luban::Deployment::Parameters::Base
 
      parameter :central_archives_path

      def central_archives_host; primary(:archive) end

      def log_archiver_command(cmd = './log-archiver')
        @log_archiver_command = "#{cmd} #{stage} #{local_archives_path} #{central_archives_host}:#{central_archives_path}"
      end

      def default_source_path
        @default_source_path ||= config_finder[:application].base_path.join('app')
      end

      protected

      def set_default_archives_parameters
        set_default :central_archives_path, luban_root_path.join('central-archives')      
      end
    end

    include Parameters

    def setup_logrotate
      cronjob schedule: "*/#{logrotate_interval} * * * *",
              command: ->{ log_archiver_command },
              output: "lublog.log"
    end

    protected

    def set_default_application_parameters
      super
      set_default_archives_parameters
      set_default_source
    end

    def after_configure
      super
      setup_logrotate
    end

    class Crontab < Luban::Deployment::Application::Crontab
      include Parameters
    end
  end
end
