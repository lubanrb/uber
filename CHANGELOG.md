# Change log

## Version 0.3.14 (Mar 30, 2017)

Minor enhancements:
  * Upgraded gem dependency of luban to version 0.12.12
    * To adopt choosing Dockerfile template by base OS
    * As a result, renamed Dockerfile.erb to Dockerfile.centos.erb
  * Changed to use command instead of entrypoint to set init command for Lubbase

## Version 0.3.13 (Mar 28, 2017)

Minor enhancements:
  * Upgraded Ruby to version 2.4.1
  * Upgraded gem dependency of luban to version 0.12.10

Bug fixes:
  * Installed epel-release package repo before the installation of nodejs

## Version 0.3.11 (Mar 27, 2017)

Minor enhancements:
  * Upgraded gem dependency of luban to version 0.12.9
  * Refactored Dockerfile template
  * Added dev package dependencies for gcc-c++ nodejs, mysql & sqlite
  * Upgraded Curl to version 7.53.1
  * Upgraded Git to 2.12.0
  * Upgraded docker engine version to 17.03.0.ce-1.el7.centos
  * Upgraded docker compose version to 1.11.2
  * Bump up build tag to 1.0.5


## Version 0.3.10 (Feb 23, 2017)

Minor enhancements:
  * Added new parameters, #docker_gid, #docker_group, to avoid permission issues on docker socket
  * Upgraded Git in development to version 2.11.1
  * Upgraded Ruby in development to version 2.4.0
  * Bump up build tag to 1.0.4
  * Bump up gem dependency of luban to version 0.12.8

## Version 0.3.9 (Feb 17, 2017)

Minor enhancements:
  * Merged individual package config files into stage config file
  * Added a new stage, #standard, for Lubbase deployment as a stand-alone product
  * Optimized Dockerfile.erb to make use of new Luban parameter for docker, #base_packages
    * As a result, bump up gem dependency of Luban to version 0.12.5 or above

## Version 0.3.8 (Feb 16, 2017)

Minor enhancements:
  * Added new parameters, #docker_engine_version, #docker_compose_version and #luban_root_path
  * Cleaned up and optimized Dockerfile and compose file
  * Added author information
  * Bump up build tag to 1.0.2

## Version 0.3.6 (Feb 15, 2017)

Minor enhancements:
  * Added support for new enhancements from Luban 0.12.3
    * Supported luban_uid to avoid permission issues on docker data volume
    * Used TZ to setup docker image timezone during run-time instead of build-time
  * Bump up build tag to 1.0.1

## Version 0.3.5 (Feb 09, 2017)

Minor enhancements:
  * Added docker support for Lubbase
  * Updated gitignore to ignore vendor/bundle if any
  * Upgraded gem dependency of luban to version 0.12.0 or above
  * Initialized build tag to 1.0.0

## Version 0.3.4 (Jan 04, 2017)

Minor enhancements:
  * Upgraded dependent gem, luban, to version 0.11.0 to utilize the luban project restructure
  * Upgraded Curl to 7.52.1

## Version 0.3.3 (Dec 02, 2016)

Minor enhancements:
  * Upgraded Ruby in Lubbase to version 2.3.3
  * Upgraded Git in Lubbase to version 2.11.0
  * Bump up gem dependency of luban to version 0.10.11

## Version 0.3.2 (Nov 28, 2016)

Bug fixes: 
  * Bump up gem dependency of luban to 0.10.9 to apply the fix for Curl installation on Linux
  * Bump up gem dependency of luban-monit to 0.2.11 to apply the recent various bug fixes in Monit

## Version 0.3.1 (Nov 21, 2016)

New features:
  * Used bundler to manage gem dependencies in Uber
    * Updated project Gemfile to enforce gem dependency of Luban to version 0.10.x
    * Added alias #bundle to enforce executing luban under the Bundler's context

Bug fixes:
  * Fixed tab complete for command luban

## Version 0.2.21 (Nov 16, 2016)

Minor enhancements:
  * Upgraded Ruby in Lubbase to 2.3.2
  * Upgarded Curl in Lubbase to 7.51.0

Bug fixes:
  * Started Monit without activating envrc in cronjob for server reboot
    * As a result, bump up gem dependency of Luban to 0.9.17

## Version 0.2.19 (Nov 06, 2016)

Minor enhancements:
  * Added parameter, #skip_archive, to determine whether to archive or not

## Version 0.2.18 (Nov 01, 2016)

Minor enhancements:
  * Speeded up luban tab completion by caching
  * Upgraded Git to version 2.10.2
  * Upgraded Monit to version 5.20.0

## Version 0.2.17 (Oct 31, 2016)

Minor enhancements:
  * Refactored cronjob definition for logrotate

## Version 0.2.16 (Oct 28, 2016)

New feature:
  * Used Luban::Deploymnet::Script to define Lublog
    * As a result, bump up gem dependency of Luban to version 0.9.13

## Version 0.2.15 (Oct 24, 2016)

Minor enhancements
  * Added lublog.conf to encapsulate configuration data for log-archiver script
  * Changed logrotate interval to 10 min instead of 15 min
  * Cleaned up the design and implementation of Lublog app parameters in a deployment project
    * As a result, bump up gem dependency of Luban to 0.9.11

## Version 0.2.14 (Oct 19, 2016)

Minor enhancements:
  * Added environment variable, #LUBAN_LOGROTATE_INTERVAL, in Lubbase to control rotation period
  * Added method, #setup_logrotate, to setup log rotation
  * Applied parameters, #logrotate_max_age, #logrotate_count, in Monit logrotate config template

## Version 0.2.13 (Oct 19, 2016)

Bug fixes:
  * Ensured logrotate return true always to avoid killing the log archiving script
    * So that the rsync command could continue no matter whether the logrotate succeeds or not

## Version 0.2.12 (Oct 18, 2016)

Minor enhancements:
  * Changed default source path to make it unrelated to any environments
    * This can help eliminate duplicate log-archiver code in every environments
  * Turned off StrictHostKeyChecking in ssh tunel creation for rsync in log-archiver

## Version 0.2.11 (Oct 18, 2016)

New features:
  * Added package for Curl in Lubbase

## Version 0.2.10 (Oct 13, 2016)

New features:
  * Added cronjob to kick start Monit in Lubmon after server reboot in Lubmon

Minor enhancements:
  * Set up central archives server in Lublog
  * Changed logrotate check interval from 5 min to 10 min in Lublog

## Version 0.2.9 (Oct 12, 2016)

New features:
  * Added application lublog to manage application log rotation and archival

Minor enhancements:
  * Upgraded Git to version 2.10.1
  * Upgraded Monit to version 5.19.0
  * Updated Monitor logrotate configuration

## Version 0.2.8 (Aug 09, 2016)

Minor enhancements:
  * Set parameter #project in Lubanfile by default for the sake of clarity

## Version 0.2.7 (Jun 24, 2016)

Minor enhancements:
  * Renamed application Builder to Constructor for better naming convention in Luban

## Version 0.2.6 (Jun 21, 2016)

Minor enhancements:
  * Standardized deployment configurations on Luban project and applications 
  * Enhanced bash completions for Luban to handle non-Luban project
  * Upgraded Git to 2.9.0

## Version 0.2.4 (Jun 16, 2016)

Minor enhancements:
  * Simplified erb templates by removing header information like revision, environment, etc. 

## Version 0.2.3 (Jun 07, 2016)

Minor enhancements:
  * Upgraded Monit to 5.18
  * Remove monitor and unmonitor undefine tasks since these two are no more common tasks
  * Update .gitignore to ignore Gemfile.lock
  * Minor code refactoring

## Version 0.2.2 (May 09, 2016)

Minor enhancements:
  * Upgraded Git to 2.8.2
  * Upgraded Ruby to 2.3.1
  * Setup httpd for Monit as default configuration

Bug fixes:
  * Added gem dependency on luban

## Version 0.2.1 (May 06, 2016)

Bug fixes:
  * Added Gemfile for luban-monit

## Version 0.2.0 (May 06, 2016)

New features:
  * Created deployment of Lubmon application to setup Monit as the monitoring service

## Version 0.1.2 (Apr 15, 2016)

Minor enhancements:
  * Created resource files for Uber environment
  * Created Luban profile for Uber environment
    * Convenient aliases
    * Tab completion for Luban
  * Handled append/remove Luban profile in bashrc when setup/destroy Uber environment

## Version 0.1.1 (Apr 13, 2016)

Bug fixes:
  * Removed unnecessary stages from Lubanfile

## Version 0.1.0 (Apr 12, 2016)

New features:
  * Created deployment of Lubbase application to install Ruby and Git as the baseline
