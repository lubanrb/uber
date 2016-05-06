# Application deployment configuration for Development::Uber::Lubmon

# Application servers
role :app, `hostname -f`.chomp

