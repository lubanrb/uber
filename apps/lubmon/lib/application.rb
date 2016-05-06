class Uber
  class Lubmon < Luban::Deployment::Application
    protected

    def setup_control_tasks
      super
      undef_task :monitor
      undef_task :unmonitor
    end
  end
end
