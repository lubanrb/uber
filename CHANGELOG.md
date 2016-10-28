# Change log

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
