# Deployment configuration for development application Uber::Lubbase

build_tag "1.0.0"

# Application servers
role :app, `hostname -f`.chomp
