# Deployment configuration for development application Uber::Lubbase

# Application servers
role :app, `hostname -f`.chomp
