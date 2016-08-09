# Change log

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
