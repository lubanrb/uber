# Deployment configuration for development application Uber::Lubbase

build_tag "1.0.5"

# Application servers
role :app, `hostname -f`.chomp, docker_unix_socket: "/var/run/docker.sock"

base_packages [ "make", "gcc", "which", "rsync", "openssh-clients", 
                "zlib-devel", "perl-devel",
                "epel-release", "nodejs", "sqlite-devel", "mysql-devel" ]

package "curl", version: "7.53.1", current: true
package "git", version: "2.12.0", current: true
package "ruby", version: "2.4.0", current: true
