class Uber
  class Lubbase < Luban::Deployment::Application
    class Builder < Luban::Deployment::Application::Builder
      def luban_profile_file
        @luban_profile_file ||= app_path.join('.luban_profile')
      end

      def luban_profile_template_file
        @luban_profile_template_file ||= find_template_file("luban_profile.erb")
      end

      def build
        super
        create_luban_profile
      end

      protected

      def create_luban_profile
        upload_by_template(file_to_upload: luban_profile_file,
                           template_file:  luban_profile_template_file,
                           auto_revision: true)
      end
    end
  end
end
