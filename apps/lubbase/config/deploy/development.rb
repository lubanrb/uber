# Deployment configuration for development application Uber::Lubbase

build_tag "1.0.1"

# Application servers
role :app, `hostname -f`.chomp, docker_unix_socket: "/var/run/docker.sock"
