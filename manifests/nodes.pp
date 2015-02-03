 node 'agent1.localdomain' {

   include ngnix1,
   include ngnix
 }

 node default {

     include nginx1

 }


#        $timestamp = generate('/bin/date', '+%Y%d%m_%H:%M:%S')
   #          file { '/tmp/hello':
   #                content => "Hello, world Changed by manifests operation ${timestamp}\n",
   #                       
   #                                }
   #  package { 'nginx':
   #            ensure => installed,
   #
