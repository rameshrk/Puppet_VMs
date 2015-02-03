
 class nginx {

               package { 'nginx':
                        ensure => installed,
                        require => Package['apache2.2-common'],
                  }
              
                package { 'apache2.2-common':
                             ensure => absent,
                }


              service { 'nginx':
                      ensure  => running,
                      require => Package['nginx'],
                  }
               
         } 
