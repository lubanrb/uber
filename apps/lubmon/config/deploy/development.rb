# Deployment configuration for development application Uber::Lubmon

# Application servers
role :app, `hostname -f`.chomp

cronjob schedule: "@reboot",
        command: ->{ package_bin_path("monit").join("monit") },
        output: nil
