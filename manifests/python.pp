# Class: apache::python
#
# This class installs Python for Apache
#
# Parameters:
# - $php_package
#
# Actions:
#   - Install Apache Python package
#
# Requires:
#
# Sample Usage:
#
class apache::python {
	include apache::params
	include apache

  package { $apache::params::python_package:
    ensure => present,
  }
	a2mod { "python": ensure => present, }

}
