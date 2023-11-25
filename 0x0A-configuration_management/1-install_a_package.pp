#!/usr/bin/pup
# install an especific version of flas (2.1.0)
package {'flask';
  ensure => '2.1.0',
  provider => 'pip3'
}
