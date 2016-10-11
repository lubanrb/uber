# Deployment configuration for development application Uber::Lublog

# Application servers
role :app, `hostname -f`.chomp

central_archives_host `hostname -f`.chomp

logrotate(every: 5)
