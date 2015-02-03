
## site.pp ##

# This file (/etc/puppetlabs/puppet/manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition. (The default node can be omitted
# if you use the console and don't define any other nodes in site.pp. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.)

## Active Configurations ##

# PRIMARY FILEBUCKET
# This configures puppet agent and puppet inspect to back up file contents when
# they run. The Puppet Enterprise console needs this to display file contents
# and differences.

# Define filebucket 'main':
filebucket { 'main':
  server => 'learn.localdomain',
  path   => false,
}

# Make filebucket 'main' the default backup location for all File resources:
File { backup => 'main' }

# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.

  import 'nodes.pp' 

  #node 'agent1.localdomain' {


  #package { 'curl':
  #     ensure => installed,
  #}
  #
  #user { 'krishna':
  #     ensure => present,
  #}
  #
  #$timestamp = generate('/bin/date', '+%Y%d%m_%H:%M:%S')
  #file { '/tmp/hello':
  #    content => "Hello, world Changed by ${timestamp}\n",
  #}
  #
  #package  { 'nginx':
  #    ensure => installed,
  #}
  #
  #package { 'apache2.2-common' :
  #  ensure =>absent,
  #     }                  
  #

  #}

