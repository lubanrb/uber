# Deployment configuration for application Uber::Lublog

cronjob schedule: "*/#{logrotate_interval} * * * *",
        command: ->{ "./log-archiver #{control_file_path}" },
        output: "lublog.log"
