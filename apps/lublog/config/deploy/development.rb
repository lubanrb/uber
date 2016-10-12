# Deployment configuration for development application Uber::Lublog

# Application servers
role :app, `hostname -f`.chomp

# Central archives server
role :archive, `hostname -f`.chomp

logrotate(every: 10)
