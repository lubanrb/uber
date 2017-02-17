# Deployment configuration for development application Uber::Lubbase

build_tag "1.0.2"

# Application servers
role :app, `hostname -f`.chomp, docker_unix_socket: "/var/run/docker.sock"

base_packages [ "make", "gcc", "which", "rsync", "openssh-clients", "zlib-devel" ]

package "curl", version: "7.52.1", current: true
package "git", version: "2.11.0", current: true
package "ruby", version: "2.3.3", current: true
