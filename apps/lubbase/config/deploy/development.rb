# Application deployment configuration for Development::Uber::Lubbase

# Application servers
role :app, `hostname -f`.chomp
