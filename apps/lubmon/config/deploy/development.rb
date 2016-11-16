# Deployment configuration for development application Uber::Lubmon

# Application servers
role :app, `hostname -f`.chomp

