# Deployment configuration for application Uber::Lubmon

cronjob schedule: "@reboot",
        command: ->{ "#{package_bin_path("monit").join("monit")}" + 
                     " -c #{package_install_path("monit").join("etc", "monitrc")}" },
        setup: [], output: nil
