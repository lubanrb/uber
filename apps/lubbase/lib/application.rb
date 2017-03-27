require 'etc'

class Uber
  class Lubbase < Luban::Deployment::Application
    parameter :docker_engine_version, default: '17.03.0.ce-1.el7.centos'
    parameter :docker_compose_version, default: '1.11.2'
    parameter :docker_gid, default: ->{ current_docker_gid }
    parameter :docker_group, default: 'docker'

    def current_docker_gid
      Etc.getgrnam(docker_group).gid
    end

    class Constructor < Luban::Deployment::Application::Constructor
      def luban_profile_file
        @luban_profile_file ||= app_path.join('.luban_profile')
      end

      def bashrc_file
        @bashrc_file ||= Pathname.new(user_home).join('.bashrc')
      end

      def source_command
        @source_command ||= "source #{luban_profile_file}"
      end

      def luban_profile_template_file
        @luban_profile_template_file ||= find_template_file("luban_profile.erb")
      end

      def setup 
        super
        create_luban_profile
        update_bashrc
      end

      def destroy
        cleanup_bashrc
        super
      end

      protected

      def create_luban_profile
        upload_by_template(file_to_upload: luban_profile_file,
                           template_file:  luban_profile_template_file,
                           auto_revision: true)
      end

      def update_bashrc
        unless test(:grep, "-q -F '#{source_command}' #{bashrc_file}")
          execute(:printf, "'#{source_command}' >> #{bashrc_file}")
        end
      end

      def cleanup_bashrc
        require 'tempfile'
        tmp_file = Dir::Tmpname.make_tmpname(tmp_path.join(".bashrc").to_s, nil)
        execute(:grep, "-v '#{source_command}' #{bashrc_file} > #{tmp_file}")
        mv(tmp_file, bashrc_file)
      end
    end
  end
end
